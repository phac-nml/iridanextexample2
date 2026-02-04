process MERGE_METADATA {
    label 'process_single'
    publishDir "${params.outdir}", mode: 'copy'

    input:
    path metadata_files

    output:
    path("merged_metadata.csv"), emit: merged_metadata

    script:
    """
    # Add header
    echo -e 'irida_id,id,single_end' > merged_metadata.csv

    # Concatenate all metadata files
    cat ${metadata_files} >> merged_metadata.csv
    """
}
