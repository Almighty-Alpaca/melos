/*
 * Copyright (c) 2016-present Invertase Limited & Contributors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this library except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

import 'dart:async';
import 'dart:io';

import 'package:github/github.dart';
import 'package:meta/meta.dart';

import 'exception.dart';

/// A hosted git repository.
@immutable
abstract class HostedGitRepository {
  const HostedGitRepository();

  /// The name of this repository.
  String get name;

  /// The URL of this repository on the host's web site.
  Uri get url;

  /// The URL of the commit with the given [id] on the host's web site.
  Uri commitUrl(String id);

  /// The URL of the issue/PR with the given [id] on the host's web site.
  Uri issueUrl(String id);
}

mixin SupportsManualRelease on HostedGitRepository {
  /// The URL to create a prefilled release.
  Uri releaseUrl({
    String? tag,
    String? title,
    String? body,
    bool? isPreRelease,
  });
}

mixin SupportsAutomaticRelease on HostedGitRepository {
  Future<String?> canCreateRelease();

  /// Create a new release
  Future<void> createRelease({
    required String? tag,
    required String? title,
    required String? body,
    required bool? isPreRelease,
    required String? commit,
    required bool isDraft,
  });
}

class AutomaticReleaseUnsupportedException extends MelosException {
  AutomaticReleaseUnsupportedException(this.message);

  final String message;

  @override
  String toString() => 'Unable to create a release: $message';
}

/// A git repository, hosted by GitHub.
@immutable
class GitHubRepository extends HostedGitRepository
    with SupportsManualRelease, SupportsAutomaticRelease {
  const GitHubRepository({
    required this.owner,
    required this.name,
  });

  factory GitHubRepository.fromUrl(Uri uri) {
    if (uri.scheme == 'https' && uri.host == 'github.com') {
      final match = RegExp(r'^/(.+)/(.+)/?$').firstMatch(uri.path);
      if (match != null) {
        return GitHubRepository(
          owner: match.group(1)!,
          name: match.group(2)!,
        );
      }
    }

    throw FormatException('The URL $uri is not a valid GitHub repository URL.');
  }

  /// The username of the owner of this repository.
  final String owner;

  @override
  final String name;

  @override
  Uri get url => Uri.parse('https://github.com/$owner/$name/');

  @override
  Uri commitUrl(String id) => url.resolve('commit/$id');

  @override
  Uri issueUrl(String id) => url.resolve('issues/$id');

  @override
  Uri releaseUrl({
    String? tag,
    String? title,
    String? body,
    bool? isPreRelease,
  }) {
    return url.resolve('releases/new').replace(
      queryParameters: <String, String>{
        if (tag != null) 'tag': tag,
        if (title != null) 'title': title,
        if (body != null) 'body': body,
        if (isPreRelease != null) 'prerelease': '$isPreRelease',
      },
    );
  }

  String? _getGithubToken() => Platform.environment['GITHUB_TOKEN'];

  @override
  Future<String?> canCreateRelease() async {
    final githubToken = _getGithubToken();

    if (githubToken?.isEmpty ?? true) {
      return 'GITHUB_TOKEN environment variable is not set.';
    } else {
      return null;
    }
  }

  @override
  Future<void> createRelease({
    required String? tag,
    required String? title,
    required String? body,
    required bool? isPreRelease,
    required String? commit,
    required bool isDraft,
  }) async {
    final github = GitHub(auth: Authentication.withToken(_getGithubToken()));
    final repositorySlug = RepositorySlug(owner, name);

    final createRelease = CreateRelease.from(
      tagName: tag,
      name: title,
      body: body,
      isPrerelease: isPreRelease,
      targetCommitish: commit,
      isDraft: isDraft,
    );

    await github.repositories.createRelease(repositorySlug, createRelease);
  }

  @override
  String toString() {
    return '''
GitHubRepository(
  owner: $owner,
  name: $name,
)''';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GitHubRepository &&
          other.runtimeType == runtimeType &&
          other.owner == owner &&
          other.name == name;

  @override
  int get hashCode => owner.hashCode ^ name.hashCode;
}

/// A git repository, hosted by GitLab.
@immutable
class GitLabRepository extends HostedGitRepository {
  GitLabRepository({
    required this.owner,
    required this.name,
  });

  factory GitLabRepository.fromUrl(Uri uri) {
    if (uri.scheme == 'https' && uri.host == 'gitlab.com') {
      final match = RegExp(r'^\/((?:.+[\/]?))?\/(.+)\/?$').firstMatch(uri.path);
      if (match != null) {
        return GitLabRepository(
          owner: match.group(1)!,
          name: match.group(2)!,
        );
      }
    }

    throw FormatException('The URL $uri is not a valid GitLab repository URL.');
  }

  /// The username of the owner of this repository.
  final String owner;

  @override
  final String name;

  @override
  Uri get url => Uri.parse('https://gitlab.com/$owner/$name/');

  @override
  Uri commitUrl(String id) => url.resolve('-/commit/$id');

  @override
  Uri issueUrl(String id) => url.resolve('-/issues/$id');

  @override
  String toString() {
    return '''
GitLabRepository(
  owner: $owner,
  name: $name,
)''';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GitHubRepository &&
          other.runtimeType == runtimeType &&
          other.owner == owner &&
          other.name == name;

  @override
  int get hashCode => owner.hashCode ^ name.hashCode;
}

final _hostsToUrlParser = {
  'GitHub': (Uri url) => GitHubRepository.fromUrl(url),
  'GitLab': (Uri url) => GitLabRepository.fromUrl(url),
};

/// Tries to parse [url] into a [HostedGitRepository].
///
/// Throws a [FormatException] it the given [url] cannot be parsed into an URL
/// of any of the supported git repository hosts.
HostedGitRepository parseHostedGitRepositoryUrl(Uri url) {
  for (final parser in _hostsToUrlParser.values) {
    try {
      return parser(url);
      // ignore: empty_catches
    } catch (e) {}
  }

  throw FormatException(
    'The URL $url is not a valid URL for a repository on any of the supported '
    'hosts: ${_hostsToUrlParser.keys.join(', ')}',
  );
}
