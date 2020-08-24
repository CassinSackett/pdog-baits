#!/bin/bash
#PBS -A loni_repeats03
#PBS -q workq
#PBS -l nodes=1:ppn=20
#PBS -l walltime=72:00:00
#PBS -o gatk_haplotypecaller_output
#PBS -N gatk_haplotypecaller

CUR=pwd

module load java/1.8.0  
REFERENCE=/work/sydnij/pdogkrakengenome/pilon_pdog_kraken_nothuman_1308
GATKCOMMAND=/home/sydnij/packages/gatk-4.1.5.0/gatk 
 
COMMAND="${GATKCOMMAND} HaplotypeCaller -R ${REFERENCE}.fasta"

# find all the rmdup.bams we want
for FILE in /work/sydnij/*.rmdup.bam 
do 
COMMAND="${COMMAND} -I ${FILE}"
done

COMMAND="${COMMAND} -O /work/sydnij/GUPD_kraken_rangewide.vcf --min-base-quality-score 20"

$COMMAND

