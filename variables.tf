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

###########################
# Role assignment  ##
###########################

variable "role_assignments" {
  description = "Role assignments for the subscription"
  default = {}
  type = map(list(string))
}