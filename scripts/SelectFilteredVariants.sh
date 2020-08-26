#!/bin/bash
#PBS -q workq
#PBS -l nodes=1:ppn=20
#PBS -l walltime=4:00:00
#PBS -A loni_gupd_redos
#PBS -o gatk_select_filteredvariants_output
#PBS -N gatk_select_filteredvariants

module load java/1.8.0

/home/sydnij/packages/gatk-4.1.5.0/gatk SelectVariants \
--variant /work/sydnij/GUPD_kraken_rangewide_SNP_MNP_VarFilt.vcf \
-R /work/sydnij/pdogkrakengenome/pilon_pdog_kraken_nothuman_1308.fasta \
--output /work/sydnij/GUPD_kraken_rangewide_SNP_MNP_SelectVarFilt.vcf \
--set-filtered-gt-to-nocall true 
 












