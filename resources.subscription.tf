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

resource "azurerm_role_assignment" "role_assignment" {
  for_each = { 
    for role_user in local.role_user_list : 
      "${role_user.role}.${role_user.user}" => role_user
  }
  scope                = data.azurerm_subscriptions.subscriptions.subscriptions[0].id
  role_definition_name = each.value.role
  principal_id         = data.azuread_user.user[each.key].object_id
}





