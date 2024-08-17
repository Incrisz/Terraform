# First Update your ubuntu server:

sudo apt update

# Install Dependence:

sudo apt install software-properties-common gnupg2 curl -y

# Import GPG Key:

curl https://apt.releases.hashicorp.com/gpg | gpg — dearmor > hashicorp.gpg

# Change permission of the imported file for GPG Key:

sudo install -o root -g root -m 644 hashicorp.gpg /etc/apt/trusted.gpg.d/

# Add repository to your repository file:


sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

# Now Install Terraform:
sudo apt install terraform

sudo snap install terraform --classic

# Check Terraform after installation:
terraform  --version


# CMD



# After installation, navigate to your project directory and initialize Terraform. This will download the necessary plugins and set up your environment.
terraform init


# Next, you can plan your infrastructure to see the changes that will be applied. This command doesn't make any actual changes but shows you a preview.
terraform plan 

# To apply your Terraform configuration and create the planned infrastructure, use the apply command. The -auto-approve flag allows it to proceed without manual intervention.
terraform apply -auto-approve 

# When you no longer need the infrastructure, you can destroy all resources created by Terraform with the destroy command. The -auto-approve option lets it happen without confirmation prompts.
terraform destroy -auto-approve
# Terraform
# Terraform

# Once you have found the address, for example if the address is github_repository.my_repo, you can proceed to remove it from Terraform's state management with the following command:


terraform state rm github_repository.example
