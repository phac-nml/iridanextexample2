# phac-nml/iridanextexample2: Changelog

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.1.2] - 2026-02-05

### `Updated`

- Refactored local modules to separate directories under `modules/local`. [PR #13](https://github.com/phac-nml/iridanextexample2/pull/13)
- Adding containers to `TEST_METADATA` and `MERGE_METADATA` modules. [PR #13](https://github.com/phac-nml/iridanextexample2/pull/13)

## [0.1.1] - 2026-01-26

### `Added`

- Adding GitHub CI tests against Nextflow `24.10.3`. [PR #8](https://github.com/phac-nml/iridanextexample2/pull/8)
  - Required downgrading minimum Nextflow version from `24.10.5` to `24.10.3`.
- Added `task.ext.override_configured_container_registry` check so that the multiqc container from `community.wave.seqera.io` can be overridden for private container registries. [PR #11](https://github.com/phac-nml/iridanextexample2/pull/11)

### `Updated`

- Some minor updates to GitHub actions and `.nf-core.yml` to better match latest nf-core template. [PR #8](https://github.com/phac-nml/iridanextexample2/pull/8) and [PR #11](https://github.com/phac-nml/iridanextexample2/pull/11)
- Updated nf-core modules and subworkflows. [PR #8](https://github.com/phac-nml/iridanextexample2/pull/8)

## [0.1.0] - 2025-07-25

- Initial release of phac-nml/iridanextexample2, created with the [nf-core](https://nf-co.re/) template.
- Updated nf-core template:
  - Change the pipeline name to `iridanextexample2` which does not comply with nf-core standard. [PR #1](https://github.com/phac-nml/iridanextexample2/pull/1)
  - Swap `master` for `main` for branch name. [PR #1](https://github.com/phac-nml/iridanextexample2/pull/1)
    - .github/workflows `linting.yml` and `branch.yml` deviate from template
- Remove nf-core branding (for external use) following [nf-core guidelines](https://nf-co.re/docs/guidelines/external_use). [PR #2](https://github.com/phac-nml/iridanextexample2/pull/2)
  - Left some links to nf-core documentation and github actions
  - Githubactions now pass. Including making test `--profile test,conda` to fix issue with tests.
- Added [nf-iridanext plugin](https://github.com/phac-nml/nf-iridanext) to pipeline. [PR #3](https://github.com/phac-nml/iridanextexample2/pull/3)
- Added metadata to the `iridanext.output.json` for testing in IRIDA-Next. [PR #4](https://github.com/phac-nml/iridanextexample2/pull/4) and [PR #5](https://github.com/phac-nml/iridanextexample2/pull/5)
- Include a `sample` and `sample_name` columns to samplesheet for accomodating the IRIDA-Next PID. [PR #4](https://github.com/phac-nml/iridanextexample2/pull/4)
- Update the documentation to reflect the changes made to the template. [PR #6](https://github.com/phac-nml/iridanextexample2/pull/6)
- Add a category of parameters for checking in IRIDA-Next (i.e. file-path, boolean, enum, and integer). [PR #7](https://github.com/phac-nml/iridanextexample2/pull/7)

[0.1.0]: https://github.com/phac-nml/iridanextexample2/releases/tag/0.1.0
[0.1.1]: https://github.com/phac-nml/iridanextexample2/releases/tag/0.1.1
[0.1.2]: https://github.com/phac-nml/iridanextexample2/releases/tag/0.1.2
