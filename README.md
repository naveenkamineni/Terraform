# Terraform
Creating AWS Services using Terraform
# installing prerequisite to setup Terraform

step 1: install chocolatey https://chocolatey.org/install

##### if Windows Open PowerShellas Administarator ######

Run this Command : You will get Command in https://chocolatey.org/instal

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

check chocolatey installed or Not : choco --version

step 2: Now You can install Terraform using Chocolatey

Run this command : choco install terraform -y

check terraform installed or not : terraform --version
