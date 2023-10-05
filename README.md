# Azure (MCA) Subscription

Azure  terraform module that creates a Subscription using Microsoft Customer Account (MCA).

## Usage

```hcl
module "mod_sub" {
  source  = "azurenoops/overlays-resource-group/azurerm"
  billing_account_name = "e879cf0f-2b4d-5431-109a-f72fc9868693:024cabf4-7321-4cf9-be59-df0c77ca51de_2019-05-31"
  billing_profile_name = "PE2Q-NOIT-BG7-TGB"
  invoice_section_name = "MTT4-OBS7-PJA-TGB"
  subscription_name = "example-workload-dev"
}
```