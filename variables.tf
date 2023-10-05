####################################
# Generic naming Configuration    ##
####################################
variable "subscription_name" {
  description = "Name of the subscription"
  type        = string
}

###########################
# Billing Configuration  ##
###########################

variable "billing_account_name" {
    description = "billing account that should be used to create subscriptions"  
}

variable "billing_profile_name" {
    description = "billing profile that should be used to create subscriptions"  
}

variable "invoice_section_name" {
    description = "invoice section name that should be used to create subscriptions"  
}