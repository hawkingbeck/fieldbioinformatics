
export INPUT_DIR=/app
export OUTPUT_DIR=/testData

docker run -e INPUT_DIR -e OUTPUT_DIR --mount type=bind,source=/home/ubuntu/test_data/PGIM21-R085,target=/app paho/pangolin:latest

