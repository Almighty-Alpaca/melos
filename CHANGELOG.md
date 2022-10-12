# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

## 2022-10-12

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`melos` - `v2.8.0`](#melos---v280)

---

#### `melos` - `v2.8.0`

 - **FIX**: only include normal dependencies of transitive dependencies ([#387](https://github.com/invertase/melos/issues/387)). ([e0659e97](https://github.com/invertase/melos/commit/e0659e976ad2d9eef90f611fa012a51e14880657))
 - **FIX**: return type of `promptChoice` ([#391](https://github.com/invertase/melos/issues/391)). ([54004993](https://github.com/invertase/melos/commit/54004993c980a204533980508bb2c03b27fe45fc))
 - **FEAT**: Implement creating URLs to prefilled GitHub release forms when executing `melos version`. ([1fd990b1](https://github.com/invertase/melos/commit/1fd990b1cc2c853c906737863f4ad52dfbd47d99))
 - **FEAT**: add `--dependent-preid` option ([#388](https://github.com/invertase/melos/issues/388)). ([b6201364](https://github.com/invertase/melos/commit/b6201364dd951db39ab422b6baaa812cef8b83fd))
 - **DOCS**: add `flutter_html` to projects using Melos ([#389](https://github.com/invertase/melos/issues/389)). ([4e3a4447](https://github.com/invertase/melos/commit/4e3a4447b41973eb4b779b096a0dbdfcf2a3188c))
 - **DOCS**: add yak_packages reference to docs/index ([#381](https://github.com/invertase/melos/issues/381)). ([9b366fd9](https://github.com/invertase/melos/commit/9b366fd917792dbdde1ed59a51beefd46bb88c57))

# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

## 2022-09-23

### Changes

---

Packages with breaking changes:

 - [`conventional_commit` - `v0.5.0`](#conventional_commit---v050)

Packages with other changes:

 - [`melos` - `v2.7.1`](#melos---v271)

---

#### `conventional_commit` - `v0.5.0`

 - **BREAKING** **FEAT**: allow custom type. ([e55edb54](https://github.com/invertase/melos/commit/e55edb54ed2bfc8cb1e2e9205831930c35ce47d8))

#### `melos` - `v2.7.1`

 - **REFACTOR**: move over versioning logic from `conventional_commit`. ([75a6fda0](https://github.com/invertase/melos/commit/75a6fda09e2afdcea07d091e6cb48a2cbd2b7fac))
 - **DOCS**: document versioning ([#377](https://github.com/invertase/melos/issues/377)). ([cc64f1f4](https://github.com/invertase/melos/commit/cc64f1f48c032a60f1d58057df8e08f517c76d33))


## 2022-09-13

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`melos` - `v2.7.0`](#melos---v270)

---

#### `melos` - `v2.7.0`

 - **REFACTOR**: fix a few analyzer issues ([#365](https://github.com/invertase/melos/issues/365)). ([74adb062](https://github.com/invertase/melos/commit/74adb062650687a9b7bc8c108a96fbfbb71d023a))
 - **FIX**: handle prompts when no terminal is attached to stdio ([#370](https://github.com/invertase/melos/issues/370)). ([81e850e9](https://github.com/invertase/melos/commit/81e850e9d380e8474f76b813eafd887e50dddcd5))
 - **FIX**: run commands in single shell ([#369](https://github.com/invertase/melos/issues/369)). ([1ab2e290](https://github.com/invertase/melos/commit/1ab2e2902aedda02aed8a6bc009703bf1b8c01e3))
 - **FIX**: `scripts.*.exec.failFast` option in `melos.yaml` ([#359](https://github.com/invertase/melos/issues/359)). ([16fe6916](https://github.com/invertase/melos/commit/16fe691665466e81e34c87451e8b1ca32809bf95))
 - **FEAT**: Add support for specifying an IntelliJ module name prefix ([#349](https://github.com/invertase/melos/issues/349)). ([1d2720fa](https://github.com/invertase/melos/commit/1d2720fa7e73fc07766d0a9acd621fdb7f7fb311))


## 2022-07-18

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`conventional_commit` - `v0.4.3+1`](#conventional_commit---v0431)
 - [`melos` - `v2.6.0`](#melos---v260)

---

#### `conventional_commit` - `v0.4.3+1`

 - **REFACTOR**: enable more lint rules ([#346](https://github.com/invertase/melos/issues/346)). ([70448bec](https://github.com/invertase/melos/commit/70448bec7d8cf5f8d0a8dc8c2660e70033936329))

#### `melos` - `v2.6.0`

 - **REFACTOR**: use `homepage` and `repository` keys in `pubspec.yaml` ([#354](https://github.com/invertase/melos/issues/354)). ([c7a78e3a](https://github.com/invertase/melos/commit/c7a78e3af1ebc3d3a0d2973fdbe154813b8eb2e3))
 - **REFACTOR**: enable more lint rules ([#346](https://github.com/invertase/melos/issues/346)). ([70448bec](https://github.com/invertase/melos/commit/70448bec7d8cf5f8d0a8dc8c2660e70033936329))
 - **REFACTOR**: remove local fork of `yamlicious` ([#345](https://github.com/invertase/melos/issues/345)). ([64a15b83](https://github.com/invertase/melos/commit/64a15b83f87d9c21c0bcad10f4e6d4941f935091))
 - **REFACTOR**: remove local fork of `prompts` package ([#344](https://github.com/invertase/melos/issues/344)). ([200450c3](https://github.com/invertase/melos/commit/200450c3064ae461dafc1eebee285c762a28eba1))
 - **FIX**: don't override Intellij module config files ([#351](https://github.com/invertase/melos/issues/351)). ([850e9f82](https://github.com/invertase/melos/commit/850e9f8227ff3233b3f348260ec16ff05b13991d))
 - **FIX**: false positive for non-unique packages ([#348](https://github.com/invertase/melos/issues/348)). ([9c136194](https://github.com/invertase/melos/commit/9c136194ac888be5f6b6ccc0543ea369507ba129))
 - **FEAT**: write conventional commit scopes in changelog ([#341](https://github.com/invertase/melos/issues/341)). ([0c64d61e](https://github.com/invertase/melos/commit/0c64d61eb9fa0f65b85a21e0843e112d0b717733))
 - **DOCS**: update link to the FlutterFire repository ([#338](https://github.com/invertase/melos/issues/338)). ([344df53c](https://github.com/invertase/melos/commit/344df53c2bd8bd8e331708013e336fed9e820b81))


## 2022-06-21

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`melos` - `v2.5.0`](#melos---v250)

---

#### `melos` - `v2.5.0`

 - **FIX**: follow up [#330](https://github.com/invertase/melos/issues/330) ([#331](https://github.com/invertase/melos/issues/331)). ([f6eec0a2](https://github.com/invertase/melos/commit/f6eec0a295c186715a68ee5b6ee96f32de2184e9))
 - **FIX**: find packages in matched directories ([#330](https://github.com/invertase/melos/issues/330)). ([c7be5235](https://github.com/invertase/melos/commit/c7be523517155ab0a4221e3bf95474cd2cea17a3))
 - **FIX**: make file IO more robust ([#329](https://github.com/invertase/melos/issues/329)). ([dfd877d6](https://github.com/invertase/melos/commit/dfd877d62b607cf5c2c482c5a9719e4d5523606a))
 - **FIX**: handle `UsageException` ([#328](https://github.com/invertase/melos/issues/328)). ([c187f9d9](https://github.com/invertase/melos/commit/c187f9d99197d3549b3da9b9612509317f03171a))
 - **FEAT**: add `runPubGetOffline` option ([#326](https://github.com/invertase/melos/issues/326)). ([8358a5a1](https://github.com/invertase/melos/commit/8358a5a11b55a81e1a01b31fe1931f7ba88c07e0))
 - **FEAT**: add includeCommitId option ([#325](https://github.com/invertase/melos/issues/325)). ([e981adf7](https://github.com/invertase/melos/commit/e981adf72f2a53181f184239f592781c728616cb))
 - **FEAT**: add --diff filter ([#323](https://github.com/invertase/melos/issues/323)). ([2f6545f6](https://github.com/invertase/melos/commit/2f6545f658a2eabc50ab7c68f47326588d6eeb2c))


## 2022-06-10

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`melos` - `v2.4.0`](#melos---v240)

---

#### `melos` - `v2.4.0`

 - **REFACTOR**: encapsulate log formatting in `MelosLogger` ([#314](https://github.com/invertase/melos/issues/314)). ([ec808b02](https://github.com/invertase/melos/commit/ec808b0205cb267f3c8bedd8dce98a02f9f6a086))
 - **FIX**: pass extra args to script when invoked without `run` ([#316](https://github.com/invertase/melos/issues/316)). ([f0a62a2d](https://github.com/invertase/melos/commit/f0a62a2d124b4b8e29534c16daaff88a49f69442))
 - **FIX**: report all dependencies in `list` command ([#313](https://github.com/invertase/melos/issues/313)). ([bb76d3a1](https://github.com/invertase/melos/commit/bb76d3a126794df05d0c823f6f8aae0311761ae1))
 - **FIX**: respect user `dependency_overrides` ([#312](https://github.com/invertase/melos/issues/312)). ([ff5bfbe6](https://github.com/invertase/melos/commit/ff5bfbe6a43f3a1a788832951c1873d150a28d7d))
 - **FIX**: Run Process.runSync in another shell to get Dart version ([#300](https://github.com/invertase/melos/issues/300)). ([0aa81a7b](https://github.com/invertase/melos/commit/0aa81a7bbad0d635981ffd52d323fe80dff97458))
 - **FEAT**: simplify writing scripts that use `melos exec` ([#315](https://github.com/invertase/melos/issues/315)). ([3e5807dd](https://github.com/invertase/melos/commit/3e5807ddde999479c6d9937a131dd0919ad7dae8))


## 2022-05-16

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`melos` - `v2.3.1`](#melos---v231)

---

#### `melos` - `v2.3.1`

 - **FIX**: use global options when running scripts ([#296](https://github.com/invertase/melos/issues/296)). ([115d0471](https://github.com/invertase/melos/commit/115d04710028612686eba3cb669f93704cac5893))


## 2022-05-12

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`melos` - `v2.3.0`](#melos---v230)

---

#### `melos` - `v2.3.0`

 - **FIX**: respect filter flags in `melos bootstrap` ([#294](https://github.com/invertase/melos/issues/294)). ([c87287e0](https://github.com/invertase/melos/commit/c87287e00d27036b9860a33e26f06c0b3bfef76f))
 - **FEAT**: link to referenced issues/PRs in changelog ([#292](https://github.com/invertase/melos/issues/292)). ([1883020b](https://github.com/invertase/melos/commit/1883020b77829122ed368998752f0196d328c60d))
 - **FEAT**: remove dependency overrides from `pubspec_overrides.yaml` in `melos clean` ([#290](https://github.com/invertase/melos/issues/290)). ([869b2d69](https://github.com/invertase/melos/commit/869b2d695b0c00061b2de2c2c325acd48bdf5208))
 - **DOCS**: use `dart pub` instead of `pub` in `README.md` ([#293](https://github.com/invertase/melos/issues/293)). ([d6beb1c3](https://github.com/invertase/melos/commit/d6beb1c33a7b4512bfcbaeaa1b0b9985e2ac3fb5))


## 2022-05-09

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`melos` - `v2.2.0`](#melos---v220)

---

#### `melos` - `v2.2.0`

 - **FEAT**: add support for Dart/Flutter SDK at custom `sdkPath` (#288). ([740050c4](https://github.com/invertase/melos/commit/740050c4dd67938d0674ddd37f0291d52f331bd4))


## 2022-04-28

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`melos` - `v2.1.0`](#melos---v210)

---

#### `melos` - `v2.1.0`

 - **FEAT**: start to log `pub get` output if it runs for more than 10s (#286). ([fca44a48](https://github.com/invertase/melos/commit/fca44a480a3de9b888bde52abf184307f99b7476))
 - **FEAT**: add `command/bootstrap/runPubGetInParallel` `melos.yaml` option (#285). ([f48e8f14](https://github.com/invertase/melos/commit/f48e8f14f781b2fbc5663854808dd0f86a291f03))


## 2022-04-26

### Changes

---

Packages with breaking changes:

 - [`melos` - `v2.0.0`](#melos---v200)

---

#### `melos` - `v2.0.0`

 - **PERF**: run `pub get` in parallel during bootstrapping (#279). ([9870270d](https://github.com/invertase/melos/commit/9870270dbe7a6b5834110aeae0e49d79ca3b8c42))
 - **FIX**: handle unresolvable symbolic links (#280). ([70094363](https://github.com/invertase/melos/commit/700943631a84a88270a99f3baf6dcb2843c584d1))
 - **DOCS**: added WiFiFlutter as proj using melos (#281). ([2c900ee8](https://github.com/invertase/melos/commit/2c900ee853ec865529950f4eaa3b5ef606b684cf))
 - **FIX**: `melos bootstrap` now correctly handles path dependencies (#268). ([96457b59](https://github.com/invertase/melos/commit/96457b59c00feed97e4204fcea24706c1510a8fb))
 - **FEAT**: allow checking melos version (`melos --version`) outside of workspaces & set up autoupdater (#276). ([c3dc28f7](https://github.com/invertase/melos/commit/c3dc28f7832561e175ff0097c21bacef9501a4d3))
 - **BREAKING** **REFACTOR**: remove `--all` flag from list command & show private packages by default (you can use the `--no-private` filter flag instead to hide private packages) (#275). ([921ec4e4](https://github.com/invertase/melos/commit/921ec4e4de7e87a19a6017f87d4691f99f8c7f32))
 - **FEAT**: add support for bootstrapping with pubspec overrides (#273). ([236e24f4](https://github.com/invertase/melos/commit/236e24f4ef36d088b18f716ae4b030d9c514ca25))

## 2022-04-26

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`melos` - `v1.6.0-dev.2`](#melos---v160-dev2)

---

#### `melos` - `v1.6.0-dev.2`

 - **PERF**: run `pub get` in parallel during bootstrapping (#279). ([9870270d](https://github.com/invertase/melos/commit/9870270dbe7a6b5834110aeae0e49d79ca3b8c42))
 - **FIX**: handle unresolvable symbolic links (#280). ([70094363](https://github.com/invertase/melos/commit/700943631a84a88270a99f3baf6dcb2843c584d1))
 - **DOCS**: added WiFiFlutter as proj using melos (#281). ([2c900ee8](https://github.com/invertase/melos/commit/2c900ee853ec865529950f4eaa3b5ef606b684cf))


## 2022-04-12

### Changes

---

Packages with breaking changes:

 - [`melos` - `v1.6.0-dev.1`](#melos---v160-dev1)

Packages with other changes:

 - There are no other changes in this release.

---

#### `melos` - `v1.6.0-dev.1`

 - **FIX**: `melos bootstrap` now correctly handles path dependencies (#268). ([96457b59](https://github.com/invertase/melos/commit/96457b59c00feed97e4204fcea24706c1510a8fb))
 - **FEAT**: allow checking melos version (`melos --version`) outside of workspaces & set up autoupdater (#276). ([c3dc28f7](https://github.com/invertase/melos/commit/c3dc28f7832561e175ff0097c21bacef9501a4d3))
 - **BREAKING** **REFACTOR**: remove `--all` flag from list command & show private packages by default (you can use the `--no-private` filter flag instead to hide private packages) (#275). ([921ec4e4](https://github.com/invertase/melos/commit/921ec4e4de7e87a19a6017f87d4691f99f8c7f32))


## 2022-04-11

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`melos` - `v1.6.0-dev.0`](#melos---v160-dev0)

---

#### `melos` - `v1.6.0-dev.0`

 - **FEAT**: add support for bootstrapping with pubspec overrides (#273). ([236e24f4](https://github.com/invertase/melos/commit/236e24f4ef36d088b18f716ae4b030d9c514ca25))


## 2022-03-22

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`melos` - `v1.5.2`](#melos---v152)

---

#### `melos` - `v1.5.2`

 - **FIX**: hosted dependency version regex (#262). ([b6e1bf4e](https://github.com/invertase/melos/commit/b6e1bf4e5c07ff78bb572bf864edd3023d6e4249))


## 2022-03-21

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`melos` - `v1.5.1`](#melos---v151)

---

#### `melos` - `v1.5.1`

 - **FIX**: support external hosted dependencies (#254). ([0f904f36](https://github.com/invertase/melos/commit/0f904f3630342188162714ac06b6cac99e925552))


## 2022-03-18

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`conventional_commit` - `v0.4.3`](#conventional_commit---v043)
 - [`melos` - `v1.5.0`](#melos---v150)

---

#### `conventional_commit` - `v0.4.3`

 - **FEAT**: allow prefixes before conventional commit type (#259). ([e856cfa5](https://github.com/invertase/melos/commit/e856cfa59f3a3c2b5bd753d2be0a1a0a512822a0))

#### `melos` - `v1.5.0`

 - **FIX**: export `MelosConfigException` for programatic usage. ([8b7fbfb5](https://github.com/invertase/melos/commit/8b7fbfb55ea223c11da370e4b2b3feb57c347f20))
 - **FEAT**: support git hosted package dependencies when versioning (#256). ([c76c08f3](https://github.com/invertase/melos/commit/c76c08f3660ae7679a4ab7631d633ba05e36e608))
 - **FEAT**: get published package versions from `pubspec.yaml` -> `publish_to` if set, instead of pub.dev (#253). ([9a5cb26e](https://github.com/invertase/melos/commit/9a5cb26e19a8de3d2a13ea460ba5864005e4e9b4))


## 2022-03-04

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`melos` - `v1.4.0`](#melos---v140)

---

#### `melos` - `v1.4.0`

 - **FIX**: don't use `Enum.name` (#251). ([27dcc7ad](https://github.com/invertase/melos/commit/27dcc7ad9f40876b682cbb783717bd08a4b485d4))
 - **FEAT**: add flag to show relative paths when using `list` (FR #246) (#257). ([06be8a14](https://github.com/invertase/melos/commit/06be8a1435abd7860b24b3be34706a83bd9d1ae5))


## 2022-02-10

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`melos` - `v1.3.0`](#melos---v130)

---

#### `melos` - `v1.3.0`

 - **FEAT**: add `--manual-version` option to `version` command (#242). ([279c53e4](https://github.com/invertase/melos/commit/279c53e44c735c1ef2339d1c73f097e820a72251))


## 2022-02-09

### Changes

---

Packages with breaking changes:

- There are no breaking changes in this release.

Packages with other changes:

- [`melos` - `v1.2.2`](#melos---v122)

---

#### `melos` - `v1.2.2`

 - **FIX**: fully consume `pub get` output when bootstrapping (#240).


## 2022-02-04

### Changes

---

Packages with breaking changes:

- There are no breaking changes in this release.

Packages with other changes:

- [`melos` - `v1.2.1`](#melos---v121)

---

#### `melos` - `v1.2.1`

 - **FIX**: bump `platform` dependency to to 3.1.0 to support latest Flutter/Dart versions (#237).


## 2022-01-26

### Changes

---

Packages with breaking changes:

- There are no breaking changes in this release.

Packages with other changes:

- [`melos` - `v1.2.0`](#melos---v120)

---

#### `melos` - `v1.2.0`

 - **FIX**: Issue where symlinks are followed too deeply causing a "File name too long" exception (#227).
 - **FEAT**: allow passing additional arguments to run commands (#231).
 - **DOCS**: add groveman as a project using melos (#225).


## 2022-01-07

### Changes

---

Packages with breaking changes:

- There are no breaking changes in this release.

Packages with other changes:

- [`conventional_commit` - `v0.4.2`](#conventional_commit---v042)

Packages with dependency updates only:

> Packages listed below depend on other packages in this workspace that have had changes. Their versions have been incremented to bump the minimum dependency versions of the packages they depend upon in this project.

- `melos` - `v1.1.2`

---

#### `conventional_commit` - `v0.4.2`

 - **FEAT**: relax commit message validation to accept commit messages without spaces before the description (after `:`).


## 2022-01-07

### Changes

---

Packages with breaking changes:

- There are no breaking changes in this release.

Packages with other changes:

- [`melos` - `v1.1.1`](#melos---v111)

---

#### `melos` - `v1.1.1`

 - **FIX**: ensure `.fvm` directories are excluded when resolving packages.
 - **DOCS**: add Flame to projects using Melos (#221).


## 2022-01-04

### Changes

---

Packages with breaking changes:

- There are no breaking changes in this release.

Packages with other changes:

- [`melos` - `v1.1.0`](#melos---v110)

---

#### `melos` - `v1.1.0`

 - **FEAT**: follow symlinks when resolving packages (#211).
 - **FEAT**: specifying a `Logger` is now optional when using Melos programmatically (#219).
 - **FEAT**: add repository host support for `GitLab` (#220).


## 2021-12-17

### Changes

---

Packages with breaking changes:

- There are no breaking changes in this release.

Packages with other changes:

- [`melos` - `v1.0.0`](#melos---v100)

Packages graduated to a stable release (see pre-releases prior to the stable version for changelog entries):

- `ansi_styles` - `v0.3.1`
- `conventional_commit` - `v0.4.1`

---

#### `melos` - `v1.0.0`

- **FIX**: a dependent packages `dependentsInWorkspace` dependents should also be added to `dependentPackagesToVersion`. ([5e7e8c75](https://github.com/invertase/melos/commit/5e7e8c756d4d0bebf403056aa863b88c502b69c2))
- **FIX**: ensure local versions of transitive dependencies are bootstrapped (#185).
- **FIX**: don't remove pubspec.lock when `clean` is ran (fixes #129).
- **FIX**: melos_tools path incorrect on certain platforms (fixes #144).
- **FEAT**: Match unknown commands with scripts (#167).
- **FEAT**: Added an error message when multiple packages in the workspace have the same name (#178).
- **FEAT**: verbose logging now logs package commit messages when versioning (#203). ([b87fb8dc](https://github.com/invertase/melos/commit/b87fb8dcf21d0aeb8524cd9212e21115829d5c0d))
- **FEAT**: optionally allow generating workspace root change logs (#161). ([56fcdff6](https://github.com/invertase/melos/commit/56fcdff6640f73a01c6d7e5f7fb453bf8ef5666e))
- **FEAT**: Add topological sort to publish command (#199).
- **FEAT**: use `dart` tool to run `pub get` in pure Dart package (#201).
- **FEAT**: respect exact version constraints when updating dependents (#194).
- **FEAT**: add support for linking to commits in changelog (#186).
- **FEAT**: add support for printing current Melos version via `-v` or `--version` (#155).
- **FEAT**: added config validation and type-safe Dart API (#139) (#140).
- **FEAT**: migrate Melos to null-safety (#115).
- **FEAT**: added "preversion" script hook, to perform actions when using `melos version` _before_ pubspec files are modified.
- **FEAT**: added `melos.yaml` validation
- **FEAT**: it is now possible to programmatically use Melos commands by importing `package:melos/melos.dart`:

```dart
final melos = Melos(workingDirectory: Directory.current);

await melos.bootstrap();
await melos.publish(dryRun: false);
```

## 2021-12-08

### Changes

---

Packages with breaking changes:

- There are no breaking changes in this release.

Packages with other changes:

- [`melos` - `v1.0.0-dev.14`](#melos---v100-dev14)

---

#### `melos` - `v1.0.0-dev.14`

- **FIX**: a dependent packages `dependentsInWorkspace` dependents should also be added to `dependentPackagesToVersion`.

## 2021-12-06

### Changes

---

Packages with breaking changes:

- There are no breaking changes in this release.

Packages with other changes:

- [`melos` - `v1.0.0-dev.13`](#melos---v100-dev13)

---

#### `melos` - `v1.0.0-dev.13`

- **FEAT**: verbose logging now logs package commit messages when versioning (#203).

## 2021-12-05

### Changes

---

Packages with breaking changes:

- There are no breaking changes in this release.

Packages with other changes:

- [`melos` - `v1.0.0-dev.12`](#melos---v100-dev12)

---

#### `melos` - `v1.0.0-dev.12`

- **FEAT**: optionally allow generating workspace root change logs (#161).
