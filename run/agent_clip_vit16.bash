name=agent_clip_vit16
flag="--attn soft --train listener 
      --featdropout 0.3
      --angleFeatSize 128
      --features img_features/CLIP-ViT-B-16-views.tsv
      --feature_size 512
      --feedback sample
      --mlWeight 0.2
      --subout max --dropout 0.5 --optim rms --lr 1e-4 --iters 80000 --maxAction 35"
mkdir -p snap/$name
CUDA_VISIBLE_DEVICES=$1 python r2r_src/train.py $flag --name $name 
