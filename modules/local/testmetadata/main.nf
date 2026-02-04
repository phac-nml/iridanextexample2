process TEST_METADATA {
    label 'process_single'
    publishDir "${params.outdir}", mode: 'copy'
    container "${ workflow.containerEngine == 'singularity' && !task.ext.singularity_pull_docker_container ?
        'https://depot.galaxyproject.org/singularity/python:3.10' :
        'biocontainers/python:3.10' }"

    input:
    tuple val(meta), path(reads)

    output:
    path("${meta.id}_metadata.csv"), emit: metadata

    when:
    task.ext.when == null || task.ext.when

    script:
    """
    echo -e '${meta.irida_id},${meta.id},${meta.single_end}' > ${meta.id}_metadata.csv
    """
}
