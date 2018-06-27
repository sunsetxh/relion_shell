
#job002 continue
#本次运行，将之前最大的类用class7替代，再次查看结果进行比对

cd /home/ycwang/workdir/20180110_data/Apo_data_snf2

DATE=$(date +%Y%m%d%H%M)

FILE_NAME=Class3D_job002_ct2_${DATE}.out

nohup relion_refine --o Class3D/job002/run --continue Class3D/job002/run_it001_optimiser.star --dont_combine_weights_via_disc --pool 3 --ctf --iter 2 --tau2_fudge 4 --particle_diameter 200 --flatten_solvent --oversampling 1 --healpix_order 5 --sigma_ang 3.33333 --offset_range 5 --offset_step 2 --norm --scale  --j 4 --gpu "0,1" > ${FILE_NAME} &

