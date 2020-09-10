# Qualys Scanner GCP Terraform  
Terraform code that can be used to deploy a qualys scanner on GCP.

NOTE: This code is not fully tested - still under development.

# Requirements 
`Terraform >= 0.12`

# Prerequisites

```
export TF_VAR_service_account_secret="./path/to/secret.json"
export TF_VAR_gcp_project_id="project-id-01"
export TF_VAR_resources_region="eu-west1"
export TF_VAR_resources_zone="eu-west1-b"
export TF_VAR_perscode="00000000000000"
export TF_VAR_subnet_name="projects/project-id/regions/eu-west1/subnetworks/subnet-name"
export TF_VAR_network_ip="10.20.300.400"
```

## OPTIONAL
```
export TF_VAR_proxy_url=""
export TF_VAR_gcp_monitoring="1"
export TF_VAR_gcp_logging="1"
```

# Testing 
To run the test we use [inspec](https://github.com/inspec/inspec) with [inspec-gcp](https://github.com/inspec/inspec-gcp). 


Export the env var: `export GOOGLE_APPLICATION_CREDENTIALS='/path/to/service_account.json'`

Set the correct attribute values for your case in `inspec/attributes.yml`.
```
 gcp_project_id: ''
 gcp_zone_type: ''
 gcp_machine_name: 'Qualys Scanner GCP Terraform'
```

Inside the inspec folder run: `inspec exec . -t gcp:// --attrs attributes.yml`
