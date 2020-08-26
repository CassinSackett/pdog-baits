#!/bin/bash
#PBS -q workq
#PBS -l nodes=1:ppn=20
#PBS -l walltime=4:00:00
#PBS -A loni_gupd_redos
#PBS -o gatk_variantfilt_workq-output
#PBS -N gatk_variantfilt

module load java/1.8.0

/home/sydnij/packages/gatk-4.1.5.0/gatk VariantFiltration \
-R /work/sydnij/pdogkrakengenome/pilon_pdog_kraken_nothuman_1308.fasta \
-V /work/sydnij/GUPD_kraken_rangewide_SNP_MNP.vcf \
-O /work/sydnij/GUPD_kraken_rangewide_SNP_MNP_VarFilt.vcf \
--filter-name "ReadPosRankSum_filter" \
--filter-expression "ReadPosRankSum < -8.0" \
--filter-name "MQRankSum_filter" \
--filter-expression "MQRankSum < -12.5" \
--filter-name "FS_filter" \
--filter-expression "FS > 60.0" \
--filter-name "QD_filter" \
--filter-expression "QD < 2.0" \
--genotype-filter-name "DP8filter" \
--genotype-filter-expression "DP < 8" 2>/dev/null 









