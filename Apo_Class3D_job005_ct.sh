#use Refine3D job001
#use two model to find the result

cd /home/ycwang/workdir/20180110_data/Apo_data_snf2

DATE=$(date +%Y%m%d%H%M)

nohup relion_refine --o Class3D/job005/run --continue Class3D/job005/run_it001_optimiser.star --firstiter_cc --ini_high 2 --dont_combine_weights_via_disc --pool 3 --ctf --iter 2 --tau2_fudge 4 --particle_diameter 200 --K 2 --flatten_solvent --zero_mask --oversampling 1 --healpix_order 5 --sigma_ang 3.33333 --offset_range 5 --offset_step 2 --sym C1 --norm --scale  --j 4 --gpu "8,9" > Class3D_job005_ct_${DATE}.out &


