#!/usr/bin/env bash

PATH=/srv/packagr:/go/bin:/usr/local/go/bin:$PATH

if [[ ! -z "${CUSTOM_WORKING_DIRECTORY}" ]]; then
  echo "using custom dir: ${CUSTOM_WORKING_DIRECTORY}"
  cd "${CUSTOM_WORKING_DIRECTORY}"
fi

echo "Starting Publishr $1"
packagr-publishr start --scm github --package_type golang
