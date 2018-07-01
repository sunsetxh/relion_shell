DIR=~/workdir/20180110_data/ADP_data_snf2

DATE=$(date +%Y%m%d%H%M)

JOB_NAME=job007

OUTPUT_FILE=std_Class3D_ct_${JOB_NAME}_${DATE}.out

INPUT_FILE=Class3D/${JOB_NAME}/run_it001_optimiser.star

GPU=8,9,10,11




cd $DIR

nohup relion_refine --o Class3D/${JOB_NAME}/run --continue ${INPUT_FILE} --dont_combine_weights_via_disc --pool 3 --ctf --iter 2 --tau2_fudge 4 --particle_diameter 250 --flatten_solvent --oversampling 1 --healpix_order 5 --sigma_ang 3.33333 --offset_range 5 --offset_step 2 --norm --scale  --j 1 --gpu "${GPU}" > $OUTPUT_FILE &



