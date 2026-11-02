# Terraform Parent-Child Module Azure Infrastructure

This repository demonstrates the Terraform Parent-Child Module architecture on Microsoft Azure.

## Architecture & Structure

```text
Terraform-Parent_Child-Module/
├── modules/
│   ├── resource_group/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── vnet/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── subnet/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── nic/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
├── .gitignore
├── main.tf
├── outputs.tf
├── providers.tf
├── terraform.tfvars
└── variables.tf
```

## Resources Created

1. **Resource Group**: `rg-devops-centralindia`
2. **Virtual Network**: `vnet-devops-centralindia` (Address Space: `10.0.0.0/16`)
3. **Subnet**: `snet-devops-centralindia` (Prefix: `10.0.1.0/24`)
4. **Network Interface (NIC)**: `nic-devops-centralindia` (Dynamic Private IP)

## Workflow

1. Initialize Terraform:
   ```bash
   terraform init
   ```
2. Format configuration:
   ```bash
   terraform fmt -recursive
   ```
3. Validate configuration:
   ```bash
   terraform validate
   ```
4. Generate and review execution plan:
   ```bash
   terraform plan -out=tfplan
   ```
5. Apply the infrastructure:
   ```bash
   terraform apply tfplan
   ```
