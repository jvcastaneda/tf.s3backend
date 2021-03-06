provider "aws" {
  region  = "us-west-2"
}
 
module "s3backend" {
  source = "jvcastaneda/s3backend/aws"
  namespace     = "projector"
}
 
output "s3backend_config" {
  value = module.s3backend.config
}
