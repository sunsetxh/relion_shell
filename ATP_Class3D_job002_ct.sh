
#job002 continue

cd /home/ycwang/workdir/20180110_data/ATP_data_snf2

DATE=$(date +%Y%m%d%H%M)

FILE_NAME=Class3D_job002_ct_${DATE}.out

nohup relion_refine --o Class3D/job002/run --continue Class3D/job002/run_it001_optimiser.star --ref clus1-160.mrc --firstiter_cc --ini_high 2 --dont_combine_weights_via_disc --pool 3 --ctf --iter 2 --tau2_fudge 4 --particle_diameter 200 --K 10 --flatten_solvent --zero_mask --oversampling 1 --healpix_order 7 --sigma_ang 3.33333 --offset_range 5 --offset_step 2 --sym C1 --norm --scale  --j 4 --gpu "0,1,2,3" > ${FILE_NAME} &

