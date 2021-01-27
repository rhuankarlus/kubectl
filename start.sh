#!/bin/sh
set -e
sleep 10
echo "Copying KUBE_CONFIG to ~/.kube/config"
echo "${KUBE_CONFIG}" > ~/.kube/config
