
export INPUT_DIR=/home/ubuntu/test_data/PGIM21-R085
export OUTPUT_DIR=./testData

docker run -e INPUT_DIR -e OUTPUT_DIR paho/pangolin:latest

