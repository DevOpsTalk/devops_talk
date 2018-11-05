#!/usr/bin/env bash

# Settup for the project

PROJ_DIR=$(pwd)/$(dirname $0)
BUCKET="terraform-jomps"
REGION="us-east-1"

cd ${PROJ_DIR}/infra
terraform init --backend="true" \
--backend-config="bucket=${BUCKET}" \
--backend-config="region=${REGION}" \
--backend-config="key=terraform.tfstate"

terraform apply
