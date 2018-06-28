cd ~/workdir/20180110_data/Apo_data_snf2

DATE=$(date +%Y%m%d%H%M)

FILE_NAME=Refine3D_job003_${DATE}.out

nohup mpirun -n 3 ~/src/relion_Release/build/bin/relion_refine_mpi --o Refine3D/job003/run --auto_refine --split_random_halves --i allconf2_1.32_cor2DW_localUVA.star --ref adp-160.mrc --firstiter_cc --ini_high 60 --dont_combine_weights_via_disc --pool 3 --ctf --particle_diameter 200 --flatten_solvent --zero_mask --oversampling 1 --healpix_order 4 --auto_local_healpix_order 4 --offset_range 5 --offset_step 2 --sym C1 --low_resol_join_halves 40 --norm --scale  --j 1 --gpu "0,1" > FILE_NAME &

