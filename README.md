# 🌍 Infrastructure as Code (IaC)
🔹 What is IaC?

Infrastructure as Code (IaC) allows you to define and manage cloud infrastructure using code instead of manually configuring resources. This makes deployments faster, repeatable, and scalable.

# Different Types of IaC in Market
AWS --> CloudFormation

Azure --> ARM Templates (Azure Resource Manager)

GCP --> Google Cloud Deployment Manager

Open Stack ---> Heat Templates

# 🔹 Then, Why Do We Need Terraform? 🤔
While each cloud provider has its own IaC tool, they only work within that specific cloud. This creates problems when you need to work across multiple providers.

# ✅ Terraform is a Universal IaC Language!

Terraform, developed by HashiCorp, is a cloud-agnostic IaC tool that allows you to manage resources across AWS, Azure, GCP, and even on-premises environments using a single configuration language (HCL - HashiCorp Configuration Language).


                                            Terraform = Code ➝ Cloud 🌉
# Terraform: Automate Your Cloud Infrastructure

🌍 What is Terraform?
Terraform is a tool that helps you automate cloud infrastructure (like AWS, Azure, or Google Cloud) using code. Instead of clicking buttons on a website to create servers, databases, or networks, you write simple instructions in a file, and Terraform does everything for you!

# User ---> Terraform ---> CloudProvider ---> Cloud Infrastructure

📌 Why Use Terraform?

🚀 Easy Automation: No need for manual setup—Terraform does it for you!

🔄 Reproducibility: Once you write the setup, you can reuse it anytime.

📋 Version Control: Keep track of infrastructure changes, just like software code.

![image](https://github.com/user-attachments/assets/da70983e-54cf-46c8-94ff-bc2a8d28c5d6)

# 1️⃣ Terraform State File (terraform.tfstate)
📌 What is it?

This file keeps a record of your infrastructure (what resources are created, their IDs, etc.).

Terraform uses it to know what exists and what changes need to be made.

📂 Location: terraform.tfstate (created in the project directory)

💡 Example:
If you create an AWS EC2 instance, terraform.tfstate will store its ID, type, region, and other details.

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

