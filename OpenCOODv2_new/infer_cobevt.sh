CUDA_VISIBLE_DEVICES=1 python opencood/tools/inference.py --model_dir  /GPFS/rhome/sifeiliu/OpenCOODv2_new/opencood/logs_HEAL/Dairv2x_cobevt --fusion_method intermediate --comm_thre=0 --note "lidar_only" --modal 0 --range  "102.4,51.2"
CUDA_VISIBLE_DEVICES=1 python opencood/tools/inference.py --model_dir  /GPFS/rhome/sifeiliu/OpenCOODv2_new/opencood/logs_HEAL/Dairv2x_cobevt --fusion_method intermediate --comm_thre=0 --note "camera_only" --modal 1 --range  "102.4,51.2"
CUDA_VISIBLE_DEVICES=1 python opencood/tools/inference.py --model_dir  /GPFS/rhome/sifeiliu/OpenCOODv2_new/opencood/logs_HEAL/Dairv2x_cobevt --fusion_method intermediate --comm_thre=0 --note "egorandom_ratio0.5" --modal 4 --range  "102.4,51.2"