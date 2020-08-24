#!/bin/bash
#PBS -q workq
#PBS -l nodes=1:ppn=20
#PBS -l walltime=02:00:00
#PBS -o samtools-view_output
#PBS -N samtools-view
#PBS -A loni_repeats03

module load samtools/0.1.19/INTEL-14.0.2 

for i in /work/sydnij/bwa_mem/CT2CC10_L1278_PE.sam; do samtools view -q 30 -bt /work/sydnij/pdogkrakengenome/pilon_pdog_kraken_nothuman_1308.fasta -o ${i%sam}bam $i; done 

