
dataDir=/home/ubuntu/fieldbioinformatics/test-data
# outputDir=/home/ubuntu/fieldbioinformatics/test-data/pangolin-output

# export INPUT_DIR=/input
# export OUTPUT_DIR=/testData

# docker run -e INPUT_DIR -e OUTPUT_DIR --mount type=bind,source=$dataDir,target=/app paho/pangolin:latest
docker run --mount type=bind,source=$dataDir,target=/data paho/pangolin:latest

