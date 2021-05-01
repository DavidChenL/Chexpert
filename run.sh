new_dir=$(date +%Y%m%d_%H%M%S)
# $new_dir=$(date +%Y%m%d)
new_dir="/space/liangyu/workspace/jhu/code/logdir_Chexpert/${new_dir}" # change to your path
echo $new_dir
mkdir $new_dir


CUDA_VISIBLE_DEVICES=0,1,2,3 \
python /space/liangyu/workspace/jhu/code/Chexpert/bin/train.py \
/space/liangyu/workspace/jhu/code/Chexpert/config/example.json \
$new_dir \
--num_workers \
32 \
--device_ids \
"0,1,2,3" \
--pre_train \
"/space/liangyu/workspace/jhu/code/Chexpert/config/pre_train.pth" \
--logtofile \
True \
--pre_train \
"/space/liangyu/workspace/jhu/code/Chexpert/config/pre_train.pth"