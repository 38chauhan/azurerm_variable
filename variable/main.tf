# resource "azurerm_resource_group" "rgblockname1" {
#   name     = "ashurgvar-1"
#   location = "West Europe"
# }

# resource "azurerm_resource_group" "rgblockname1" {
#   name     = var.rgname
#   location = "West Europe"
# }

# variable "rgname" {
  
#  type = string
#   default = "ashurgvar-2"
# }



# resource "azurerm_resource_group" "rgblockname-2" {
#   count = 5
#   name     = "name-${count.index}"
#   location = "West Europe"
# }

# resource "azurerm_resource_group" "rgblockname-3" {
#   count = 3
#   name     = var.rgname[count.index]
#   location = "West Europe"
# }

# resource "azurerm_resource_group" "rgblockname-3" {
#   count = 3
#   name     = var.rgname[count.index + 1]
#   location = "West Europe"
# }





# resource "azurerm_resource_group" "rgblockname-2" {
#   count = 5
#   name     = var.rgname[count.index]
#   location = "West Europe"
# }


# resource "azurerm_resource_group" "rgblockname-2" {
#   count = length(var.rgname)
#   name     = var.rgname[count.index]
#   location = "West Europe"
# }

# resource "azurerm_resource_group" "rgblockname-5" {
#   count = length(var.rgname)-1
#   name     = var.rgname[count.index]
#   location = "West Europe"
# }


# resource "azurerm_resource_group" "rgblockname-5" {
#   for_each = toset(["ashuvarrg-1", "ashuvarrg-2", "ashuvarrg-4", "ashuvarrg-5"])
#   name     = each.key
#   location = "West Europe"
# }


# resource "azurerm_resource_group" "rgblockname-5" {
#   for_each = toset(var.rgname)
#   name     = each.key
#   location = "West Europe"
# }

# resource "azurerm_resource_group" "rgblockname-5" {
#   for_each = toset(var.rgname)
#   name     = each.key
#   location = "westus"
# }


# resource "azurerm_resource_group" "rgblockname-5" {
#   for_each = toset(var.rgname)
#   name     = each.value
#   location = "westus"
# }


#foreach-map

# resource "azurerm_resource_group" "rgblockname-5" {
#   for_each = var.rgname
#   name     = each.key
#   location = each.value
# }


#foreach-nested map

# resource "azurerm_resource_group" "rgblockname-6" {
#   for_each = var.rgname
#   name     = each.key
#   location = each.value.location
# }

resource "azurerm_resource_group" "ashuimp" {
  name     = "Ashu-man"
  location = "eastus"
}

resource "azurerm_resource_group" "rgblockname-6" {
  for_each = var.rgname
  name     = each.value.name
  location = each.value.location
 
}

resource "azurerm_storage_account" "stgblock" {
  for_each = var.stgname
  depends_on = [ azurerm_resource_group.rgblockname-6 ]
  name                     = each.value.name
  resource_group_name      = each.value.rg
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}

# resource "azurerm_storage_account" "stgblock" {
#   for_each = var.stgname
#   depends_on = [ azurerm_resource_group.rgblockname-6 ]
#   name                     = each.value.name
#   resource_group_name      = azurerm_resource_group.rgblockname-6[each.key].name
#   location                 = each.value.location
#   account_tier             = each.value.account_tier
#   account_replication_type = each.value.account_replication_type
# }






