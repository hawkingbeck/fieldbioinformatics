import os
import subprocess
import sys
import shutil
import pandas as pd
import argparse
import numpy as np
from datetime import datetime
from decimal import Decimal

consensusSeqDir = "/data/consensus-sequences"
pangolinOutputDir = "/data/pangolin-output"

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
consenusSeqFiles = os.listdir(consensusSeqDir)
for consenusSeqFile in consenusSeqFiles:
  print(f"{consenusSeqFile}")
