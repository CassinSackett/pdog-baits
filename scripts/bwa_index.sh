#!/bin/bash
#PBS -q workq
#PBS -l nodes=1:ppn=20
#PBS -l walltime=4:00:00
#PBS -A loni_gupd_redos
#PBS -o bwa_index_output
#PBS -N bwa_index

module load bwa/0.7.15/INTEL-14.0.2 
bwa index -a bwtsw /work/sydnij/pdogkrakengenome/pilon_pdog_kraken_nothuman_1308.fasta
