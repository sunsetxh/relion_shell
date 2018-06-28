DIR=~/workdir/20180110_data/ADP_data_snf2

DATE=$(date +%Y%m%d%H%M)

JOB_NAME=job003

OUTPUT_FILE=std_Refine3D_${JOB_NAME}_${DATE}.out

INPUT_FILE=particles_1.32cor2_b200_all159141.star

REF=adp-200.mrc

GPU=12,13,14,15




cd $DIR

nohup mpirun -n 3 ~/src/relion_Release/build/bin/relion_refine_mpi --o Refine3D/${JOB_NAME}/run --auto_refine --split_random_halves --i ${INPUT_FILE} --ref ${REF} --firstiter_cc --ini_high 60 --dont_combine_weights_via_disc --pool 3 --ctf --particle_diameter 200 --flatten_solvent --zero_mask --oversampling 1 --healpix_order 4 --auto_local_healpix_order 4 --offset_range 5 --offset_step 2 --sym C1 --low_resol_join_halves 40 --norm --scale  --j 1 --gpu \"${GPU}\" > $OUTPUT_FILE &

