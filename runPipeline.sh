#!/usr/bin/env bash
set -e

inputData="./PGIM21-R085"
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

minionCmd_m="artic minion \
            --normalise 200 \
            --threads ${threads} \
            --scheme-directory ${primerSchemes} \
            --read-file ${prefix}_guppyplex_fastq_pass-NB${barcode}.fastq \
            --medaka \
            --medaka-model r941_min_high_g351 \
            ${primerScheme} \
            ${prefix}"

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

cd test-data

cmdTester $gatherCmd_n

cmdTester $demuxCmd_n

# cmdTester $minionCmd_m