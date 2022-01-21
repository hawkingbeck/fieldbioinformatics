#!/usr/bin/env bash
set -e

inputData="../test_data/PGIM21-R085"
primerSchemes="../test_data/primer-schemes"
primerScheme="IturiEBOV/V1"
prefix="test-data"
barcode="03"
threads=2

# colours
NC='\033[0m'
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'

gatherCmd_n="artic gather \
        --min-length 400 \
        --max-length 800 \
        --prefix ${prefix} \
        --directory ${inputData} \
        --fast5-directory ${inputData}/fast5_pass"

demuxCmd_n="artic demultiplex \
            --threads ${threads} \
            ${prefix}_fastq_pass.fastq"

function cmdTester {
    echo "###########################################################################################"
    echo -e "${BLUE}Running:${NC} $*"
    echo
    "$@"
    echo
    local status=$?
    if [ $status -ne 0 ]
    then
        echo -e "${RED}FAIL${NC}" >&2
        exit $status
    else
        echo -e "${GREEN}PASS${NC}" >&2
    fi
    echo
    return
}

cmdTester $gatherCmd_n

cmdTester $demuxCmd_m