#use Refine3D job001
#use two model to find the result

cd /home/ycwang/workdir/20180110_data/ADP_data_snf2

DATE=$(date +%Y%m%d%H%M)

FILE_NAME=Class3D_job005_${DATE}.out

nohup relion_refine --o Class3D/job005/run --i Refine3D/job001/run_data.star --ref clus1-200.mrc --firstiter_cc --ini_high 2 --dont_combine_weights_via_disc --pool 3 --ctf --iter 1 --tau2_fudge 4 --particle_diameter 250 --K 12 --flatten_solvent --zero_mask --oversampling 1 --healpix_order 5 --sigma_ang 3.33333 --offset_range 5 --offset_step 2 --sym C1 --norm --scale  --j 4 --gpu "2,3" > $FILE_NAME &


