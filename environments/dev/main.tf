module "vpc"{
    source      = "../../modules/vpc"
    vpc_cidr    = "10.0.0.0/16"
    subnet_cidr = "10.0.1.0/24"
    subnet_az   = "${var.aws_region}a"
    env         = "dev"
    
}

module "ec2"{
    source = "../../modules/ec2"
    ami_id        = "ami-0fd6240f599091088"
    instance_type = "t3.micro"
    subnet_id     = module.vpc.subnet_id
    env           = "dev"
    ec2_count     = 1
    
}