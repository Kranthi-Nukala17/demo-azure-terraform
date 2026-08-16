# Azure Storage Account with Terraform

This configuration creates a Standard locally redundant (LRS) Azure Storage
Account in the existing `aksdevrg` resource group, under subscription
`21dc9d4e-91d5-4da3-b1d1-b08a3b35e94c`.

1. Authenticate with Azure CLI: `az login`
2. Copy `terraform.tfvars.example` to `terraform.tfvars`.
3. Replace the example storage account name with a globally unique name.
4. Run `terraform init`, then `terraform plan` and `terraform apply`.

The storage account name must be 3-24 characters and contain only lowercase
letters and numbers.
