terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.60.0"
    }
  }



    #preinstalled
    backend "s3" {
        bucket="tfstatemihailo"
        key="terraform5.state"
        region = "eu-central-1"
      
    }

}




provider "aws" {
  region="eu-central-1"
}


module "cwrole" {
    source = "./modules/cloudwatch_access_role" 
}

module "cwpolicy" {
    source = "./modules/cloudwatch_access_policy"
    depends_on = [ module.cwrole ]
    role_id = module.cwrole.role_id #role_id iz modula policy je onaj role_id iz modula role; ovde ga inicijalizujemo
}

module "inst_profile" {
    source = "./modules/instance_profile"
    depends_on =  [module.cwrole.role_name]
    role_name = module.cwrole.role_name #ovde inicijalizujemo role_name
}

module "sg_for_ec2" {
  source = "./modules/ec2_sg"
}

module "ec2" {

  source = "./modules/ec2"
  depends_on_one = [ module.inst_profile.inst_profile_name]

  depends_on_two = [ module.sg_for_ec2.sg_id ]

  instance_profile_name = module.inst_profile.inst_profile_name
  sg_id = module.sg_for_ec2.sg_id

}



