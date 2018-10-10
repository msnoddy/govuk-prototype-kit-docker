#!/usr/bin/env bash
set -e
set -x 

scriptPath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd "${scriptPath}"

pipenv run docker-compose up
