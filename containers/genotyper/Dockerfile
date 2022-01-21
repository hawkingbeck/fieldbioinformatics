#################################################
# Stage 1 - bundle base image + runtime
#################################################
ARG FUNCTION_DIR="/home/app/"

# Grab a fresh copy of the image and install GCC
FROM python:latest AS python-alpine

RUN python -m pip install numpy
RUN python -m pip install pandas
RUN python -m pip install pyyaml

COPY app.py .
COPY recipe_graph.py .
COPY genotype-variants.py .
COPY phe-recipes.yml .

ENTRYPOINT [ "python", "app.py" ]