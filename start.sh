#!/bin/sh
set -e
echo "Copying KUBE_CONFIG to ~/.kube/config"
echo "${KUBE_CONFIG}" > ~/.kube/config
