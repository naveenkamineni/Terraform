# Terraform
Creating AWS Services using Terraform
# installing prerequisite to setup Terraform

step 1: install chocolatey https://chocolatey.org/install

##### if Windows Open PowerShell as Administarator and Run Below command ######

##### Command ###### 
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

##### You can also get above Command in https://chocolatey.org/instal #######

##### check chocolatey installed or Not : #####

choco --version

step 2: Now You can install Terraform using Chocolatey

###### Run this command : #######

choco install terraform -y

###### check terraform installed or not : ######

terraform --version

Step 3: install AWSCLI and add to system path :

#### command for windows#####

winget install --id Amazon.AWSCLI --exact

Note : Add the  awscli to the environmental variable (C:\Program Files\Amazon\AWSCLIV2\)

##### check AWSCLI installed on windows and available everywhere ######

aws --version

# AWS Configuration ( permission to create instance in aws through cli/ IaC outside aws console)
#### command ####
Note : You Should have aws Access Key and Secret Key for Configuration

aws configure

AWS Access Key ID [*******************]: 

AWS Secret Access Key [******************]: 

Default region name [ap-south-1]: 

Default output format [json]: 

#### Now you can create resource in aws ########

# Command to create and plan and apply aws resource using Terraform

##### Commands ######

terraform init

terraform plan -out=tfplan

terraform apply tfplan

# if you remove the resource that you have created use the following command

terraform destroy










