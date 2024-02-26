# Create helm chart
helm create pychart

# Package pychart
helm package mywebapp

# Install pychart
helm install pychart ./pychart-0.1.0.tgz

# Uninstall pychart
helm uninstall pychart

# Instantiate the environment
terraform init

# Plan the environment
terraform plan

# Deploy environment
terraform apply --auto-approve

# Connect to the machine - get public IP or DNS and get key
terraform output -raw private_key > ec2-key-name.pem
chmod 400 ec2-key-name.pem

# Mandatory provide user - by default uses the session user
ssh -i ec2-key-name.pem  user@publicIP

# Run ansible playbook
ansible-playbook -i inventory.ini kube-dependencies.yml
