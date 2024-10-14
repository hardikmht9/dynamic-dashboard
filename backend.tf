terraform {
  backend "s3" {
    bucket = "dashboard-mybucket"                    //bucket name
    key    = "terraform.tfstate"                                                   // file name 
    region = "us-east-1"
  }
}
