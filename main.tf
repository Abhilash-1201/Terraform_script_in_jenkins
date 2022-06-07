provider "aws" {
  region = "us-west-1"
  access_key = ""
  secret_key = ""

}

module "my_vpc" {
  source = "/home/ubuntu/test/vpc"
}
module "my_ec2" {
  source = "/home/ubuntu/test/ec2"
  subnet-id = "${module.my_vpc.subnet_id}"
  sg-groups = "${module.my_vpc.sg_id}"
}
