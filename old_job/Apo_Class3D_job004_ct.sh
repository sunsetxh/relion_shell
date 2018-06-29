#use Refine3D job002

cd /home/ycwang/workdir/20180110_data/Apo_data_snf2

DATE=$(date +%Y%m%d%H%M)

FILE_NAME=Class3D_job004_${DATE}.out

nohup relion_refine --o Class3D/job004/run --continue Class3D/job004/run_it005_optimiser.star  --firstiter_cc --ini_high 2 --dont_combine_weights_via_disc --pool 3 --ctf --iter 5 --tau2_fudge 4 --particle_diameter 200 --K 10 --flatten_solvent --zero_mask --oversampling 1 --healpix_order 5 --sigma_ang 3.33333 --offset_range 5 --offset_step 2 --sym C1 --norm --scale  --j 2 --gpu "2,3,4,5" > ${FILE_NAME} &

