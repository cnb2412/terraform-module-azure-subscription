###########################
# Subscription creation  ##
###########################

resource "azurerm_subscription" "sub" {
  subscription_name = var.subscription_name
  billing_scope_id  = data.azurerm_billing_mca_account_scope.main.id # array due to count
}

###########################
# Role assignment  ##
###########################

# resource "azurerm_role_assignment" "example" {
#   scope                = azurerm_subscription.sub.subscription_id
#   role_definition_name = 
#   principal_id         = data.azurerm_client_config.example.object_id
# }





