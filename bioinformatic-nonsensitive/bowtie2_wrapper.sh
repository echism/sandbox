#!/bin/sh

if [ $# -ne 3 ]; then
    echo "Usage: bowtie2-build <catted genome .fa file> <output> <sample fastq>"
    exit 1
fi

#Only used for local submission
#appdir=/home/echism/bowtie/
#genome_dir=/home/echism/bowtie/sample

# Build the reference files
./bowtie2-build $1.fasta $2 

# Run Bowtie2 sequencing (This actually combines into one job rather than using DAGMAN)
./bowtie2 -p 1 -x $2 $3.fq > $3.sam

