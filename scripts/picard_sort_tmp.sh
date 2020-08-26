#!/bin/bash
#PBS -q workq
#PBS -l nodes=1:ppn=20
#PBS -l walltime=72:00:00
#PBS -o picardtools_sort_output
#PBS -N picardtools_sort_032720
#PBS -A loni_repeats03

cd $PBS_O_WORKDIR
mkdir -p tmp

module load  java/1.8.0

for i in /work/sydnij/bwa_mem/*PE.bam; 
do 
	java -Dpicard.useLegacyParser=false -Xmx2g -jar /home/sydnij/packages/picard/picard.jar \
	AddOrReplaceReadGroups -I $i -O ${i%PE.bam}.tag.bam -MAX_RECORDS_IN_RAM 1000000 -TMP_DIR $PWD/tmp \
        -SO coordinate -ID ${i%PE.bam} -LB 1 -PL illumina -PU 1 -SM ${i%PE.bam}; 
done 

