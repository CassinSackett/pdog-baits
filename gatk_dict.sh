#!/bin/bash
#PBS -q workq
#PBS -l nodes=1:ppn=20
#PBS -l walltime=4:00:00
#PBS -A loni_gupd_redos
#PBS -o gatk_dict_output
#PBS -N gatk_dict

module load java/1.8.0  
/home/sydnij/packages/gatk-4.1.5.0/gatk --java-options -Xmx2g CreateSequenceDictionary -R /work/sydnij/pdogkrakengenome/pilon_pdog_kraken_nothuman_1308.fasta
