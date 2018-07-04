DIR=~/workdir/20180110_data/ADP_data_snf2

DATE=$(date +%Y%m%d%H%M)

JOB_NAME=job023

OUTPUT_FILE=std_Class3D_${JOB_NAME}_${DATE}.out

INPUT_FILE=particles_1.32cor2_b200_all159141.star

REF=adp-200.mrc

INI_HIGH=1

K=2

GPU=10,11
 
CMD="nohup relion_refine --o Class3D/${JOB_NAME}/run --i ${INPUT_FILE} --ref ${REF} --firstiter_cc --ini_high ${INI_HIGH} --dont_combine_weights_via_disc --pool 3 --ctf --iter 1 --tau2_fudge 4 --particle_diameter 250 --K ${K} --flatten_solvent --zero_mask --oversampling 1 --healpix_order 6 --sigma_ang 3.33333 --offset_range 5 --offset_step 2 --sym C1 --norm --scale  --j 1 --gpu "${GPU}" >> $OUTPUT_FILE &"




cd $DIR
echo $CMD > $OUTPUT_FILE
nohup relion_refine --o Class3D/${JOB_NAME}/run --i ${INPUT_FILE} --ref ${REF} --firstiter_cc --ini_high ${INI_HIGH} --dont_combine_weights_via_disc --pool 3 --ctf --iter 1 --tau2_fudge 4 --particle_diameter 250 --K ${K} --flatten_solvent --zero_mask --oversampling 1 --healpix_order 6 --sigma_ang 3.33333 --offset_range 5 --offset_step 2 --sym C1 --norm --scale  --j 1 --gpu "${GPU}" >> $OUTPUT_FILE 2>&1 &

