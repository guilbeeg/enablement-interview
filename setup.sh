#!/bin/bash

#Sets an environment variable with your github username in /root/.bash_profile
echo 'export GIT_USER="guilbeeg"' >> ~/.bash_profile

#Confirm env var is set
cat ~/.bash_profile

# Replace <HOSTNAME> with "vault-server.hashicorp.com"
HOSTNAME="vault-server.hashicorp.com"

# Write the following configuration parameters to config.hcl
echo 'cluster_addr  = "https://'"$HOSTNAME"':8201"' >> config.hcl
echo 'api_addr  = "https://'"$HOSTNAME"':8200"' >> config.hcl
echo 'disable_mlock  = true' >> config.hcl

#Confirm values are correct
cat config.hcl