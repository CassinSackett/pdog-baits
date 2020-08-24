#!/bin/bash
#PBS -q workq
#PBS -l nodes=1:ppn=20
#PBS -l walltime=4:00:00
#PBS -A loni_gupd_redos
#PBS -o samtools_faidx_output
#PBS -N samtools_faidx

module load samtools/0.1.19/INTEL-14.0.2 

samtools faidx /work/sydnij/pdogkrakengenome/pilon_pdog_kraken_nothuman_1308.fasta
