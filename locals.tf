locals {
  role_user_list = flatten([
    for role,users in var.role_assignments : [
        for user in users : {
            role = role
            user = user
        }
    ]
  ])
}