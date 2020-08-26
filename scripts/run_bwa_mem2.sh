#!/bin/bash 
#PBS -q workq
#PBS -l nodes=1:ppn=20
#PBS -l walltime=10:00:00
#PBS -o bwa-mem_output
#PBS -N bwa-mem
#PBS -A loni_gupd_redos

module load bwa/0.7.15/INTEL-14.0.2

for i in /work/sydnij/fastqNEW/*R1.fastqNEW; do bwa mem -v 3 -M -P -a -t 20 /work/sydnij/pdogkrakengenome/pilon_pdog_kraken_nothuman_1308.fasta $i ${i%R1.fastqNEW}R2.fastqNEW > ${i%R1.fastqNEW}PE.sam 2> ${i%R1.fastqNEW}PE.mem.log; done
