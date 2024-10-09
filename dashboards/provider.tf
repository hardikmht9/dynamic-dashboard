
terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}

# Configure the New Relic provider
provider "newrelic" {
#  account_id = "4438271"
#   api_key = "NRAK-XXL9XIK9SB065A8EU75N1D14JXV"    
  region = "US"                     
}