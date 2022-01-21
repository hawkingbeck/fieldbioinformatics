import os
import subprocess
import sys
import shutil
import pandas as pd
import argparse
import numpy as np
from datetime import datetime
from decimal import Decimal

inputDir = str(os.getenv('INPUT_DIR'))
outputDir = os.getenv('OUTPUT_DIR')

print(f"Input Dir: {inputDir}")
print(f"Output Dir {outputDir}")

print(f"Pangolin D Version")
command = ["pangolin", "-dv"]
subprocess.run(command)

print(f"Pangolin Version")
command = ["pangolin", "-v"]
subprocess.run(command)

print(f"PangoLearn Version")
command = ["pangolin", "-pv"]
subprocess.run(command)


# List all the consensus fasta files in the input dir
inputFiles = os.listdir(inputDir)
for inputFile in inputFiles:
  print(f"{inputFile}")
