#!/bin/bash 
#PBS -q workq
#PBS -l nodes=1:ppn=20
#PBS -l walltime=04:00:00
#PBS -A loni_gupd_gatk
#PBS -o baitstools_output60000
#PBS -N baitstools_60000

export PATH=$PATH:/home/sydnij/packages/ruby
source ~/.bashrc

ruby /home/sydnij/packages/BaitsTools/baitstools.rb vcf2baits -i /work/sydnij/GUPDassay/GUPD_10rangewide_102919_Q30SNPsQC_filterrm.recode.vcf --totalvars 60000 --scale -r /project/sackettl/new_ref/pilon_pdog.fasta -L 120 --lenbef 60 -o GUPD_rangewide_60k --log --bed --phred64 --gaps exclude --params --complete --noNs --maxgc 55 --maxmask 10.0 --minqual 20
