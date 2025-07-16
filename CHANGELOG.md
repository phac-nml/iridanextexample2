# phac-nml/iridanextexample2: Changelog

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## v1.0.0dev - [date]

- Initial release of phac-nml/iridanextexample2, created with the [nf-core](https://nf-co.re/) template.
- Updated nf-core template:
  - Change the pipeline name to `iridanextexample2` which does not comply with nf-core standard. [PR #1](https://github.com/phac-nml/iridanextexample2/pull/1)
  - Swap `master` for `main` for branch name. [PR #1](https://github.com/phac-nml/iridanextexample2/pull/1)
    - .github/workflows `linting.yml` and `branch.yml` deviate from template
- Remove nf-core branding (for external use) following [nf-core guidlines](https://nf-co.re/docs/guidelines/external_use). [PR #2](https://github.com/phac-nml/iridanextexample2/pull/2)
  - Left some links to nf-core documentation and github actions
  - Since the main changes are related to Github actions I made changes to pipeline to allow them to pass.
