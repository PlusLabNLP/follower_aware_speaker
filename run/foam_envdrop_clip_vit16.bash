name=agent_foam_clip_vit16

# aug: the augmented paths, only the paths are used (not the insts)
# speaker: load the speaker from
# load: load the agent from

flag="--attn soft --train auglistener --selfTrain
      --aug tasks/R2R/data/aug_paths.json
      --speaker snap/speaker_clip_vit/state_dict/best_val_unseen_bleu 
      --load snap/agent_clip_vit/state_dict/best_val_unseen
      --angleFeatSize 128
      --features img_features/CLIP-ViT-B-16-views.tsv
      --feature_size 512
      --accumulateGrad
      --featdropout 0.4
      --subout max --optim rms --lr 1e-4 --iters 300000 --maxAction 35"
mkdir -p snap/$name
CUDA_VISIBLE_DEVICES=$1 python r2r_src/train.py $flag --name $name 

