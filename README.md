# Terraform: Creating AWS Services using Terraform

## Prerequisites for Setting up Terraform

### Step 1: Install Chocolatey (Windows Only)

Chocolatey is a package manager for Windows that helps install Terraform easily.

#### Install Chocolatey

1. Open **PowerShell as Administrator**.
2. Run the following command:

   ```powershell
   Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
   ```

> **Note:** You can also find the latest installation command at [Chocolatey's official website](https://chocolatey.org/install).

#### Verify Chocolatey Installation

Run the following command:

```powershell
choco --version
```

### Step 2: Install Terraform using Chocolatey

Once Chocolatey is installed, install Terraform by running:

```powershell
choco install terraform -y
```

#### Verify Terraform Installation

```powershell
terraform --version
```

### Step 3: Install AWS CLI and Add to System Path

#### Install AWS CLI (Windows)

```powershell
winget install --id Amazon.AWSCLI --exact
```

> **Note:** Add AWS CLI to the system environment variable:
> - **Path:** `C:\Program Files\Amazon\AWSCLIV2\`

#### Verify AWS CLI Installation

```powershell
aws --version
```

## AWS Configuration (Granting Permission to Create AWS Resources)

Before using Terraform to create AWS resources, you need to configure AWS CLI with your credentials.

#### Configure AWS CLI

Run the following command and enter your credentials when prompted:

```powershell
aws configure
```

Example Input:
```
AWS Access Key ID [*******************]:
AWS Secret Access Key [******************]:
Default region name [ap-south-1]:
Default output format [json]:
```

## Using Terraform to Create AWS Resources

### Initialize Terraform

```powershell
terraform init
```

### Plan Terraform Deployment

```powershell
terraform plan -out=tfplan
```

### Apply Terraform Plan

```powershell
terraform apply tfplan
```

### Destroy Resources (If Needed)

If you want to remove the resources created using Terraform, run:

```powershell
terraform destroy
```

---
Now, you're all set to deploy AWS resources using Terraform! 🚀

