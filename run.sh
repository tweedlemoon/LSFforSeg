cd /liuyifei/LSFforSeg

python trainLSF.py \
  --data-path "/root/autodl-tmp/liuyifei" \
  --Data_Name DRIVE \
  -b 2 \
  --epochs 300 \
  --level-set-coe 0.000001 \
  --loss-weight 1.0 2.0 \
  --back-bone unet

python trainLSF.py \
  --data-path "/root/autodl-tmp/liuyifei" \
  --Data_Name Chase_db1 \
  -b 2 \
  --epochs 300 \
  --level-set-coe 0.000001 \
  --loss-weight 1.0 2.0 \
  --back-bone attunet

python utils/emailSender.py

shutdown -h now
