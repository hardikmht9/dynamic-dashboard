# variable "dashboard_pages"{
#     type =any 
# }



variable "dashboard_pages" {
  description = "List of dashboard pages with widgets"
  type = list(object({
    name    = string
    widgets = list(object({
      type       = string
      title      = string
      row        = number
      column     = number
      width      = number
      height     = number
      nrql_query = string
    }))
  }))
}
variable "id" {
  type = string
}

variable "api" {
  type = string
}