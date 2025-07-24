# phac-nml/iridanextexample2: Changelog

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## v1.0.0dev - [date]

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
