DIR=~/workdir/20180110_data/ATP_data_snf2

DATE=$(date +%Y%m%d%H%M)

JOB_NAME=job009

OUTPUT_FILE=std_Class3D_${JOB_NAME}_${DATE}.out

INPUT_FILE=Refine3D/job011/run_data.star

REF=new-atp-160.mrc

HEALPIX_ORDER=5

INI_HIGH=30

K=2

GPU=0,1

CMD="nohup relion_refine --o Class3D/${JOB_NAME}/run --i ${INPUT_FILE} --ref ${REF} --firstiter_cc --ini_high $INI_HIGH --dont_combine_weights_via_disc --pool 3 --ctf --iter 1 --tau2_fudge 4 --particle_diameter 200 --K $K --flatten_solvent --zero_mask --oversampling 1 --healpix_order ${HEALPIX_ORDER} --sigma_ang 3.33333 --offset_range 5 --offset_step 2 --sym C1 --norm --scale  --j 4 --gpu "${GPU}" >> $OUTPUT_FILE 2>&1 &"


cd $DIR
echo $CMD > $OUTPUT_FILE
nohup relion_refine --o Class3D/${JOB_NAME}/run --i ${INPUT_FILE} --ref ${REF} --firstiter_cc --ini_high $INI_HIGH --dont_combine_weights_via_disc --pool 3 --ctf --iter 1 --tau2_fudge 4 --particle_diameter 200 --K $K --flatten_solvent --zero_mask --oversampling 1 --healpix_order ${HEALPIX_ORDER} --sigma_ang 3.33333 --offset_range 5 --offset_step 2 --sym C1 --norm --scale  --j 4 --gpu "${GPU}" >> $OUTPUT_FILE 2>&1 &



