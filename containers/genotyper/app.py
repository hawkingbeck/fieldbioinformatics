from csv import reader
import os
from argparse import ArgumentParser
from yaml import full_load as load_yaml
from datetime import datetime, time
from sys import exit, stderr
import subprocess
import uuid
import json

##############################################
# Step 1. Get Env Vars
##############################################
inputDir = os.getenv('INPUT_DIR')
outputDir = os.getenv('OUTPUT_DIR')

