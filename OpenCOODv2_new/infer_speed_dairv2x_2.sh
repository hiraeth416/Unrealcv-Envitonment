baseline=('opencood/logs_HEAL/Dairv2x_v2xvit_new' 'opencood/logs_HEAL/Dairv2x_attfuse_new')



for i in ${baseline[*]}
do
 echo baseline_$i
 CUDA_VISIBLE_DEVICES=0 python opencood/tools/inference_speed.py --model_dir $i --modal 0 --range "102.4,51.2" --note "speed" --result_name "lidar_only"
done
#CUDA_VISIBLE_DEVICES=0 python opencood/tools/inference_speed.py --model_dir 'opencood/logs_HEAL/Dairv2x_V2VNet_new' --modal 0 --range "102.4,48" --note "speed" --result_name "lidar_only"


for i in ${baseline[*]}
do
 echo baseline_$i
 CUDA_VISIBLE_DEVICES=0 python opencood/tools/inference_speed.py --model_dir $i --modal 3 --range "102.4,51.2" --note "speed" --result_name "egocamera_otherlidar"
done
#CUDA_VISIBLE_DEVICES=0 python opencood/tools/inference_speed.py --model_dir 'opencood/logs_HEAL/Dairv2x_V2VNet_new' --modal 3 --range "102.4,48" --note "speed" --result_name "egocamera_otherlidar"


for i in ${baseline[*]}
do
 echo baseline_$i
 CUDA_VISIBLE_DEVICES=0 python opencood/tools/inference_speed.py --model_dir $i --modal 1 --range "102.4,51.2" --note "speed" --result_name "camera_only"
done
#CUDA_VISIBLE_DEVICES=0 python opencood/tools/inference_speed.py --model_dir 'opencood/logs_HEAL/Dairv2x_V2VNet_new' --modal 1 --range "102.4,48" --note "speed" --result_name "camera_only"
