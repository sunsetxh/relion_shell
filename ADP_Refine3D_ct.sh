DIR=~/workdir/20180110_data/ADP_data_snf2

DATE=$(date +%Y%m%d%H%M)

JOB_NAME=job007

OUTPUT_FILE=std_Refine3D_ct_${JOB_NAME}_${DATE}.out

INPUT_FILE=Refine3D/job007/run_it009_optimiser.star

GPU=9,10,11

CMD="nohup mpirun -n 3 relion_refine_mpi --o Refine3D/${JOB_NAME}/run --auto_refine --split_random_halves --i ${INPUT_FILE} --ref ${REF} --ini_high ${INI_HIGH} --firstiter_cc --dont_combine_weights_via_disc --pool 3 --ctf --particle_diameter 250 --flatten_solvent --zero_mask --oversampling 1 --healpix_order 1 --auto_local_healpix_order 4 --offset_range 5 --offset_step 2 --sym C1 --low_resol_join_halves 40 --norm --scale  --j 1 --gpu "${GPU}" >> $OUTPUT_FILE 2>&1 &"


cd $DIR
echo $CMD > $OUTPUT_FILE
nohup mpirun -n 3 relion_refine_mpi --o Refine3D/${JOB_NAME}/run --continue ${INPUT_FILE} --dont_combine_weights_via_disc --pool 3 --particle_diameter 250 --flatten_solvent --oversampling 1 --auto_local_healpix_order 4 --norm --scale  --j 4 --gpu "${GPU}" >> $OUTPUT_FILE 2>&1 &
      
