# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed

- Separate `#fetch` method to two methods with different behavior. (see [#8](https://github.com/icyleaf/totem/issues/8))

### Added

- Added `Time` format support

## [0.4.0] (2018-07-31)

### Added

- Added remote provider extensions.
- Added redis/etcd to remote providers.

## [0.3.0] (2018-07-27)

### Added

- Added adapter for configuration formats, writting and using custom adapter. (see [#3](https://github.com/icyleaf/totem/issues/3))
- Added write to file with dotenv format.
- Added Totem::Any equal with other class & struct.
- Added nested key setting for the raw content of configuration formats. (see [specs](https://github.com/icyleaf/totem/blob/master/spec/totem/config_spec.cr#L609))
- Improved inspect output with `#pp` or `#pp!`.

## [0.2.1] (2018-07-26)

### Fixed

- Fix do throw an exception to call `#mapping` with unkown key.

## [0.2.0] (2018-07-25)

### Added

- Fetching all `#keys` and `#flat_keys`.
- Iterating all settings use `#settings` or `#each`.

### Changed

- Use the value of `#settings` to dump json or yaml string (more accurate).
- Use [popcorn](https://github.com/icyleaf/popcorn) to easy and safe casting type.

### Fixed

- Fix cast failed with JSON::Any/YAML::Any with `#as_h?` and `#as_a?`
- Fix typo in README [#1](https://github.com/icyleaf/totem/pull/1) (thanks @[dancrew32](https://github.com/dancrew32))

## [0.1.0] (2018-07-20)

:star2:First beta version:star2:

[Unreleased]: https://github.com/icyleaf/totem/compare/v0.4.0...HEAD
[0.4.0]: https://github.com/icyleaf/totem/compare/v0.3.0...v0.4.0
[0.3.0]: https://github.com/icyleaf/totem/compare/v0.2.1...v0.3.0
[0.2.1]: https://github.com/icyleaf/totem/compare/v0.2.0...v0.2.1
[0.2.0]: https://github.com/icyleaf/totem/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/icyleaf/totem/compare/03303bead652c98c51a68c39a44908c7ed2f9327...v0.1.0
