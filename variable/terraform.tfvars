# rgname = ["ashuvarrg-1", "ashuvarrg-2", "ashuvarrg-4", "ashuvarrg-5"]

#MAP CONCEPT
#  rgname = {
#    "rg1" = "westus" 
#    "rg2" = "centralindia"
#    "rg3" = "eastus"
#    "rg4" = "southindia"
#   }

#Nested MAP concept

# rgname = {
#   "1st-rg" = {
#     name = "ashu-rg-1"
#     location = "eastus"
#   }

#    "2nd-rg" = {
#     name = "ashu-rg-3"
#     location = "eastus"
    
#   }

#  "3rd-rg" = {
#     name = "ashu-rg-2"
#     location = "centralindia"
    
#   }
# }




rgname = {
  "1st-stg" = {
    name = "ashu-rg-1"
    location = "eastus"
  }

   "2nd-stg" = {
    name = "ashu-rg-3"
    location = "eastus"
    
  }

 "3rd-stg" = {
    name = "ashu-rg-2"
    location = "centralindia"
    
  }
}


stgname = {
  "1st-stg" = {
    name = "ashustg1"
    rg = "ashu-rg-1"
    location = "eastus"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }

  "2nd-stg" = {
    name = "ashustg2"
    rg = "ashu-rg-2"
    location = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }

  "3rd-stg" = {
    name = "ashustg3"
    rg = "ashu-rg-3"
    location = "westus"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}

