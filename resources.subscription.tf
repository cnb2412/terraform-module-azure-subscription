resource "azurerm_subscription" "sub" {
  subscription_name = var.subscription_name
  billing_scope_id  = data.azurerm_billing_mca_account_scope.main.id # array due to count
}
