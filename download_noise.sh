# Create Folder for Audio Noise
BACKGROUND_NOISE_DOWNLOAD_PATH=datasets/noise_datasets
mkdir -p $BACKGROUND_NOISE_DOWNLOAD_PATH

# Download Audio Noise
wget -d https://github.com/DandinPower/Noise-Datasets/archive/main.zip -O Noise-Datasets.zip
mv Noise-Datasets.zip $BACKGROUND_NOISE_DOWNLOAD_PATH

# Unzip Audio Noise
cd $BACKGROUND_NOISE_DOWNLOAD_PATH
unzip Noise-Datasets.zip