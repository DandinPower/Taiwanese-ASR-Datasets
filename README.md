# Taiwanese ASR Datasets

It is a repository for using Taiwanese ASR datasets to create a Huggingface open source dataset.

## Installation

1. Install the required packages.

    ```bash
    python3 -m venv venv
    source venv/bin/activate
    pip install -r requirements.txt
    ```

2. Install audio source

    ```bash
    bash download_noise.sh
    ```

3. Setup Huggingface CLI

    ```bash
    pip install -U "huggingface_hub[cli]"
    huggingface-cli login
    # login by your huggingface write token
    ```

## Usage

1. Put your dataset in to the place you want

2. Transform your dataset into 16K sampling rate if you want

    - Modify `transform_wav_to_16k.sh` to your own path
    - Run `bash transform_wav_to_16k.sh`

3. Noise your train dataset if you want
    
    - Modify `add_noise.py` to your own path
    - Run `python add_noise.py`

4. Create Huggingface metadata and copy your dataset into the Huggingface dataset folder

    - Go to `hf_datasets` folder

    - Modify `create_metadata.py` to your own path

    ```bash
    python create_metadata.py
    ```

5. After creating metadata, you can upload your dataset to Huggingface

    - Modify `create_datasets.py` to your own path and your own dataset name

    ```bash
    python create_datasets.py
    ```

## Reference

1. [Huggingface Doc](https://huggingface.co/docs/datasets/audio_dataset)