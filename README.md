# Azure Storage Account with Terraform

This configuration creates a Standard locally redundant (LRS) Azure Storage
Account in the existing `aksdevrg` resource group, under subscription
`21dc9d4e-91d5-4da3-b1d1-b08a3b35e94c`.

Terraform state is stored remotely in the `tfstate` blob container in
`aksdevstg0012504`, using the blob `storage.terraform.tfstate`. The storage
account must exist before `terraform init` can use it as a backend. The GitHub
Actions service principal also needs the **Storage Blob Data Contributor** role
on that storage account (or the `aksdevrg` resource group) so it can create and
lock the state blob.

1. Authenticate with Azure CLI: `az login`
2. Copy `terraform.tfvars.example` to `terraform.tfvars`.
3. Replace the example storage account name with a globally unique name.
4. Run `terraform init`, then `terraform plan` and `terraform apply`.

The storage account name must be 3-24 characters and contain only lowercase
letters and numbers.
