data "azurerm_billing_mca_account_scope" "main" {
  billing_account_name = var.billing_account_name
  billing_profile_name = var.billing_profile_name
  invoice_section_name = var.invoice_section_name
}

data "azurerm_subscriptions" "subscriptions" {
  depends_on = [azurerm_subscription.sub]
  display_name_prefix = var.subscription_name
  display_name_contains = var.subscription_name
  lifecycle {
    postcondition {
      condition     = length(self.subscriptions) == 1
      error_message = "Number of subscriptions found here should be 1. Error. Should not happen."
    }
  }
}