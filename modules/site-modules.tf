
// define an s3 backend here

module "vpc" {
  source = "../"

  environment = "cloudschool"
  region = ???
  vpc_cidr =  ???
  private_subnets =   ???
  public_subnets  =   ???

  //multiple azs neede to avoid an error in when applyin aws_db_subnet_group.default-subnet-group
  azs  =  ???

  enable_dns_support = true
  enable_dns_hostnames = true

}

output "environment" {
  value = "${module.vpc.environment}"
}

output "vpc_cidr" {
  value = "${module.vpc.vpc_cidr}"
}

output "admin_key_name" {
  value = "${module.vpc.admin_key_name}"
}


output "private_subnets" {
value = "${module.vpc.private_subnets}"
}


output "public_subnets" {
  value = "${module.vpc.public_subnets}"
}

output "vpc_id" {
  value = ???
}
