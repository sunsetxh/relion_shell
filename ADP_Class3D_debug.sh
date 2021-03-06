DIR=~/workdir/20180110_data/ADP_data_snf2

DATE=$(date +%Y%m%d%H%M)

JOB_NAME=job014

OUTPUT_FILE=std_Class3D_${JOB_NAME}_${DATE}.out

INPUT_FILE=Refine3D/job004/run_data.star

REF=atp-200.mrc

GPU=6,7




cd $DIR

nohup ~/src/relion/build/bin/relion_refine --o Class3D/${JOB_NAME}/run --i ${INPUT_FILE} --ref ${REF} --firstiter_cc --ini_high 30 --dont_combine_weights_via_disc --pool 3 --ctf --iter 1 --tau2_fudge 4 --particle_diameter 250 --K 2 --flatten_solvent --zero_mask --oversampling 1 --healpix_order 5 --sigma_ang 3.33333 --offset_range 5 --offset_step 2 --sym C1 --norm --scale  --j 4 > $OUTPUT_FILE &



