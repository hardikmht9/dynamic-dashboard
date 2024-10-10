
terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}

# Configure the New Relic provider
provider "newrelic" {
  # account_id = "4438271"
  account_id = var.id

  # api_key = "NRAK-XXL9XIK9SB065A8EU75N1D14JXV"    
  api_key = var.api    

  region = "US"         

  // how to set env in local shell
  # $env:TF_VAR_api = "NRAK-XXL9XIK9SB065A8EU75N1D14JXV"
  # $env:TF_VAR_id = "4438271"           

}