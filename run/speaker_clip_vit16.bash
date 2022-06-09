name=speaker_clip_vit16
flag="--attn soft --angleFeatSize 128
      --train speaker
      --features img_features/CLIP-ViT-B-16-views.tsv
      --feature_size 512
      --subout max --dropout 0.6 --optim adam --lr 1e-4 --iters 80000 --maxAction 35"
mkdir -p snap/$name
CUDA_VISIBLE_DEVICES=$1 python r2r_src/train.py $flag --name $name 

