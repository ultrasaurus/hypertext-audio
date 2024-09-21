
just getting started... 

## SETUP

using [miniconda](https://docs.anaconda.com/miniconda/)...


following [whisperx setuo guide](https://github.com/m-bain/whisperX/blob/main/README.md#setup-%EF%B8%8F)
```
conda create --name whisperx python=3.10
conda activate whisperx
conda install pytorch==2.0.0 torchvision==0.15.0 torchaudio==2.0.0 -c pytorch
pip install git+https://github.com/m-bain/whisperx.git
````

To activate the environment, use `conda activate whisperx`
To deactivate, use `conda deactivate`

in `data` directory
* ted nelson quote + sarah's recording + json wih timestamps
* `sample01` wav & mp4 - [whisper example files](https://github.com/m-bain/whisperX/tree/v1.0.0/examples) 


``` whisperx data/sample01.wav ```


### Error 1: could not run whisperx at all,
this worked (via https://github.com/pytorch/audio/issues/1573)
```
pip install -U torch torchaudio --no-cache-dir
````
>>> `Successfully installed torchaudio-2.4.1`


Error 2: progress bars, then compute type error

*"ValueError: Requested float16 compute type, 
but the target device or backend do not support efficient float16 computation."*

this worked
```
whisperx data/sample01.wav   --compute_type float32
```
