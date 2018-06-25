#job001 continue

cd /home/ycwang/workdir/20180110_data/Apo_data_snf2

DATE=$(date +%Y%m%d%H%M)

FILE_NAME=Class3D_job001_ct_${DATE}.out

nohup relion_refine --o Class3D/job001/run --continue Class3D/job001/run_it001_optimiser.star --dont_combine_weights_via_disc --pool 3 --iter 3 --tau2_fudge 4 --particle_diameter 200 --flatten_solvent --oversampling 1 --healpix_order 5 --sigma_ang 3.33333 --offset_range 5 --offset_step 2 --norm --scale  --j 4 --gpu "0,1,2" > ${FILE_NAME} &

