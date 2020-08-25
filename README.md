# Qualys Scanner GCP Terraform  
Terraform code that can be used to deploy a qualys scanner on GCP.

# Prerequisites
```
export TF_VAR_service_account_secret=""
export TF_VAR_gcp_project_id=""
export TF_VAR_resources_region="us-central1"
export TF_VAR_resources_zone="us-central1-c"
export TF_VAR_PERSCODE=""
export TF_VAR_subnet_name=""
export TF_VAR_network_IP="10.104.22.11"
```

## OPTIONAL
```
export TF_VAR_PROXY_URL=""
export TF_VAR_GCPMONITORING="1"
export TF_VAR_GCPLOGGING="1"
```

# Warnings
The code will also create a new vpc and attach to that vpc the Qualys scanner vm.

