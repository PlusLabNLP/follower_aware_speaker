# FOAM: A Follower-aware Speaker Model for Vision-and-Language Navigation

## Requirements
```bash
pip install -r requirements.txt
```

Install Matterport3D simulators:
```bash
git submodule update --init --recursive 
sudo apt-get install libjsoncpp-dev libepoxy-dev libglm-dev libosmesa6 libosmesa6-dev libglew-dev libopencv-dev
sudo apt-get install libopencv-dev
mkdir build && cd build
cmake -DEGL_RENDERING=ON ..
# Replace the above line with following if it doesn't work:
#   cmake -DOSMESA_RENDERING=ON ..
make -j8
```

## Data
```bash
bash ./tasks/R2R/data/download.sh
```
[Image Features](https://drive.google.com/file/d/1XPrCPLVt6mC3Mja0p2fziGSHYMjE6Z9X/view?usp=sharing)

## Training
```bash
bash run/agent_clip_vit16.bash 0 # 0 is the id of GPU
bash run/speaker_clip_vit16.bash 0
bash run/foam_envdrop_clip_vit16.bash 0
```
[Pretrained Checkpoint](https://drive.google.com/file/d/1Qwl0zuVDJf0xBbtWG71pFhRc1UOMQm_z/view?usp=sharing)

## Citation
```
@inproceedings{dou2022foam,
  title={FOAM: A Follower-aware Speaker Model for Vision-and-Language Navigation},
  author={Dou, Zi-Yi and Peng, Nanyun},
  booktitle={Conference of the North American Chapter of the Association for Computational Linguistics (NAACL)},
  year={2022},
}
```

## Acknowledgement
The code is based on [EnvDrop](https://github.com/airsplay/R2R-EnvDrop) and [CLIP-ViL-VLN](https://github.com/clip-vil/CLIP-ViL/tree/master/CLIP-ViL-VLN). We thank Hao Tan for the help with preprocessing.
