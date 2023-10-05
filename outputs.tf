###############
# Outputs    ##
###############


output "id" {
  value       = azurerm_subscription.sub.id
  description = "Subscription ID in the form of /providers/Microsoft.Subscription/aliases/1b361f70-d497-42e1-bf9a-8445566ed4c5"
}

output "subscription_id" {
  value       = data.azurerm_subscriptions.subscriptions.subscriptions[0].subscription_id
  description = "Subscription ID in the form of UUID"
}