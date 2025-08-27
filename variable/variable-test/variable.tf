# variable "rgname" { 
#  type = string                 #value enter during run cmd
#   }

# variable "rgname" {
#   type    = string                               #terraform plan -var="rgname=ashurgvar-4"
#   default = "ashurgvar-2"
# }


variable "rgname" {
  # type    = map(any)  # Use set to allow unique values
  # default = {
  #   "rg1" = "ashuvarrg-1"
  #   "rg2" = "ashuvarrg-2"
  #   "rg3" = "ashuvarrg-4"
  #   "rg4" = "ashuvarrg-5"
  # }

}



