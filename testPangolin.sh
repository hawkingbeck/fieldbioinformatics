
dataDir=/home/ubuntu/test_data/PGIM21-R085
export INPUT_DIR=/app
export OUTPUT_DIR=/testData

docker run -e INPUT_DIR -e OUTPUT_DIR --mount type=bind,source=$dataDir,target=/app paho/pangolin:latest

