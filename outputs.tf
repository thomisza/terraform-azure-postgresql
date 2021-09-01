output "name" {
  value = azurerm_postgresql_server.main.name
}

output "login" {
  value = azurerm_postgresql_active_directory_administrator.main.login
}

output "group_admin_id" {
  value = azuread_group.db_admin.object_id
}

output "group_user_id" {
  value = azuread_group.db_user.object_id
}