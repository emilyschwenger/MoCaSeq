#!/bin/bash

##########################################################################################
##
## config.sh
##
## Adapted for Docker
##
##########################################################################################

repository_dir=/opt/MoCaSeq/repository
genomes_dir=/var/pipeline/ref
temp_dir=/var/pipeline/temp

picard_dir=/opt/picard-2.20.0
trimmomatic_dir=/opt/trimmomatic-0.39
GATK_dir=$(echo /opt/gatk-${GATK})
snpeff_dir=/opt/snpEff-4.3T
hmmcopyutils_dir=/opt/hmmcopy_utils
strelka_dir=/opt/strelka-2.9.10
manta_dir=/opt/manta-1.6.0
bammatcher_dir=/opt/bam-matcher
vcf2maf_dir=/opt/vcf2maf-1.6.17
vep_dir=/opt/vep-96
discvrseq_dir=/opt/DISCVRSeq-1.07
	
if [ $species = 'Mouse' ]; then
	genome_dir=$genomes_dir/GRCm38.p6
	snp_file=$genome_dir/MGP.v5.snp_and_indels.exclude_wild.vcf.gz
	alternate_snp_file=$genome_dir/MGP.v6.snp_and_indels.exclude_wild.vcf.gz
	genome_file=$genome_dir/GRCm38.p6.fna
	genomeindex_dir=$genome_dir/bwa_index/GRCm38.p6
	interval_file=$genome_dir/GRCm38.SureSelect_Mouse_All_Exon_V1.bed.list
	bammatcher_file=$genome_dir/GRCm38.bammatcher_docker.conf
	snpeff_version=GRCm38.86
	microsatellite_file=$genome_dir/GRCm38.p6.microsatellites
	callregions_file=$genome_dir/GRCm38.canonical_chromosomes.bed.gz
	CGC_file=$genome_dir/GRCm38.Census_allMon_Jan_15_11_46_18_2018_mouse.tsv
	TruSight_file="NULL"
	chromosomes=19
	gcWig_file=$genome_dir/GRCm38.p6.gc.20000.wig
	mapWig_file=$genome_dir/GRCm38.p6.map.20000.wig
	exons_file=$genome_dir/GRCm38.SureSelect_Mouse_All_Exon_V1.bed
	centromere_file="NULL"
	varregions_file=$genome_dir/GRCm38.AgilentProbeGaps.txt
	genecode_file_exons=$genome_dir/GRCm38.Genecode_M20_Exons.rds
	genecode_file_genes=$genome_dir/GRCm38.Genecode_M20_Genes.rds
	vepdata_dir=$genome_dir/VEP
	vepdata_dir=$genome_dir/VEP
fi