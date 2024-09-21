
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

error:
```
Traceback (most recent call last):
  File "/opt/homebrew/Caskroom/miniconda/base/envs/whisperx/bin/whisperx", line 5, in <module>
    from whisperx.transcribe import cli
  File "/opt/homebrew/Caskroom/miniconda/base/envs/whisperx/lib/python3.10/site-packages/whisperx/__init__.py", line 1, in <module>
    from .transcribe import load_model
  File "/opt/homebrew/Caskroom/miniconda/base/envs/whisperx/lib/python3.10/site-packages/whisperx/transcribe.py", line 9, in <module>
    from .alignment import align, load_align_model
  File "/opt/homebrew/Caskroom/miniconda/base/envs/whisperx/lib/python3.10/site-packages/whisperx/alignment.py", line 11, in <module>
    import torchaudio
  File "/opt/homebrew/Caskroom/miniconda/base/envs/whisperx/lib/python3.10/site-packages/torchaudio/__init__.py", line 1, in <module>
    from torchaudio import (  # noqa: F401
  File "/opt/homebrew/Caskroom/miniconda/base/envs/whisperx/lib/python3.10/site-packages/torchaudio/_extension/__init__.py", line 43, in <module>
    _load_lib("libtorchaudio")
  File "/opt/homebrew/Caskroom/miniconda/base/envs/whisperx/lib/python3.10/site-packages/torchaudio/_extension/utils.py", line 61, in _load_lib
    torch.ops.load_library(path)
  File "/opt/homebrew/Caskroom/miniconda/base/envs/whisperx/lib/python3.10/site-packages/torch/_ops.py", line 1295, in load_library
    ctypes.CDLL(path)
  File "/opt/homebrew/Caskroom/miniconda/base/envs/whisperx/lib/python3.10/ctypes/__init__.py", line 374, in __init__
    self._handle = _dlopen(self._name, mode)
OSError: dlopen(/opt/homebrew/Caskroom/miniconda/base/envs/whisperx/lib/python3.10/site-packages/torchaudio/lib/libtorchaudio.so, 0x0006): Symbol not found: __ZN3c1015SmallVectorBaseIjE8grow_podEPvmm
  Referenced from: <27100630-351E-3677-A9E1-E90945A87662> /opt/homebrew/Caskroom/miniconda/base/envs/whisperx/lib/python3.10/site-packages/torchaudio/lib/libtorchaudio.so
  Expected in:     <69A84A04-EB16-3227-9FED-383D2FE98E93> /opt/homebrew/Caskroom/miniconda/base/envs/whisperx/lib/python3.10/site-packages/torch/lib/libc10.dylib
```

                                                                                            
