#!/bin/bash

#Sets an environment variable with your github username in /root/.bash_profile
echo 'export GIT_USER="guilbeeg"' >> ~/.bash_profile

# Write the following configuration parameters to config.hcl
echo 'cluster_addr  = "https://<HOSTNAME>:8201"' > config.hcl
echo 'api_addr      = "https://<HOSTNAME>:8200"' >> config.hcl
echo 'disable_mlock = true' >> config.hcl

#Change <HOSTNAME> to "vault-server.hashicorp.com" & create a backup file
sed -i'.backup' -e 's/<HOSTNAME>/vault-server.hashicorp.com/g' config.hcl

#Confirm values are correct
cat config.hcl
