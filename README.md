# phac-nml/iridanextexample2

[![GitHub Actions CI Status](https://github.com/phac-nml/iridanextexample2/actions/workflows/nf-test.yml/badge.svg)](https://github.com/phac-nml/iridanextexample2/actions/workflows/nf-test.yml)
[![GitHub Actions Linting Status](https://github.com/phac-nml/iridanextexample2/actions/workflows/linting.yml/badge.svg)](https://github.com/phac-nml/iridanextexample2/actions/workflows/linting.yml)
[![nf-test](https://img.shields.io/badge/unit_tests-nf--test-337ab7.svg)](https://www.nf-test.com)

[![Nextflow](https://img.shields.io/badge/version-%E2%89%A524.10.5-green?style=flat&logo=nextflow&logoColor=white&color=%230DC09D&link=https%3A%2F%2Fnextflow.io)](https://www.nextflow.io/)
[![nf-core template version](https://img.shields.io/badge/nf--core_template-3.3.2-green?style=flat&logo=nfcore&logoColor=white&color=%2324B064&link=https%3A%2F%2Fnf-co.re)](https://github.com/nf-core/tools/releases/tag/3.3.2)
[![run with conda](http://img.shields.io/badge/run%20with-conda-3EB049?labelColor=000000&logo=anaconda)](https://docs.conda.io/en/latest/)
[![run with docker](https://img.shields.io/badge/run%20with-docker-0db7ed?labelColor=000000&logo=docker)](https://www.docker.com/)
[![run with singularity](https://img.shields.io/badge/run%20with-singularity-1d355c.svg?labelColor=000000)](https://sylabs.io/docs/)

## Introduction

**phac-nml/iridanextexample2** is an example pipeline for integration with IRIDA-Next. It is a successor to the original [iridanextexample](https://github.com/phac-nml/iridanextexample) which replaces [nf-validation](https://github.com/nextflow-io/nf-validation) with [nf-schema](https://github.com/nextflow-io/nf-schema)

1. Read QC ([`FastQC`](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/))
2. Present QC for raw reads ([`MultiQC`](http://multiqc.info/))

## Usage

### Input

First, prepare a samplesheet with your input data that looks as follows:

An example [samplesheet](assets/samplesheet.csv), which follows the [schema_input.json] structure.

```csv
sample,fastq_1,fastq_2
SAMPLE1,sample1_R1.fastq.gz,sample1_R2.fastq.gz
SAMPLE2,sample2_R1.fastq.gz,sample2_R2.fastq.gz
SAMPLE3,sample1_R1.fastq.gz,
```

Each row represents a fastq file (single-end) or a pair of fastq files (paired end). Validation of the samplesheet is performed by [nf-schema validateParameters()](https://nextflow-io.github.io/nf-schema/latest/nextflow_schema/).

### Running the pipeline

```bash
nextflow run phac-nml/iridanextexample2 \
   -profile <docker/singularity/.../institute> \
   --input samplesheet.csv \
   --outdir <OUTDIR>
```

### Output for IRIDA-Next

Output from the pipeline is available in IRIDA-Next users based on the contents of the `iridanext.output.json.gz`. Files and metadata are passed to the json output file using the [nf-iridanext plugin](https://github.com/phac-nml/nf-iridanext) based on the [iridanext.config](conf/iridanext.config).

Example:

```
{
    "files": {
        "global": [

        ],
        "samples": {
            "SAMPLE3": [
                {
                    "path": "fastqc/SAMPLE3_fastqc.html"
                }
            ],
            "SAMPLE2": [
                {
                    "path": "fastqc/SAMPLE2_2_fastqc.html"
                },
                {
                    "path": "fastqc/SAMPLE2_1_fastqc.html"
                }
            ],
            "SAMPLE1": [
                {
                    "path": "fastqc/SAMPLE1_2_fastqc.html"
                },
                {
                    "path": "fastqc/SAMPLE1_1_fastqc.html"
                }
            ]
        }
    },
    "metadata": {
        "samples": {
            "SAMPLE3": {
                "id": "SAMPLE3",
                "single_end": "true"
            },
            "SAMPLE2": {
                "id": "SAMPLE2",
                "single_end": "false"
            },
            "SAMPLE1": {
                "id": "SAMPLE1",
                "single_end": "false"
            }
        }
    }
}
```

## Citations

<!-- TODO nf-core: Add citation for pipeline after first release. Uncomment lines below and update Zenodo doi and badge at the top of this file. -->
<!-- If you use phac-nml/iridanextexample2 for your analysis, please cite it using the following doi: [10.5281/zenodo.XXXXXX](https://doi.org/10.5281/zenodo.XXXXXX) -->

<!-- TODO nf-core: Add bibliography of tools and data used in your pipeline -->

An extensive list of references for the tools used by the pipeline can be found in the [`CITATIONS.md`](CITATIONS.md) file.

This pipeline uses code and infrastructure developed and maintained by the [nf-core](https://nf-co.re) community, reused here under the [MIT license](https://github.com/nf-core/tools/blob/main/LICENSE).

> **The nf-core framework for community-curated bioinformatics pipelines.**
>
> Philip Ewels, Alexander Peltzer, Sven Fillinger, Harshil Patel, Johannes Alneberg, Andreas Wilm, Maxime Ulysse Garcia, Paolo Di Tommaso & Sven Nahnsen.
>
> _Nat Biotechnol._ 2020 Feb 13. doi: [10.1038/s41587-020-0439-x](https://dx.doi.org/10.1038/s41587-020-0439-x).

# Legal

Copyright 2023 Government of Canada

Licensed under the MIT License (the "License"); you may not use
this work except in compliance with the License. You may obtain a copy of the
License at:

https://opensource.org/license/mit/

Unless required by applicable law or agreed to in writing, software distributed
under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
CONDITIONS OF ANY KIND, either express or implied. See the License for the
specific language governing permissions and limitations under the License.
