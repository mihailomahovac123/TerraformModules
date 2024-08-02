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


locals {
  environment = "dev"
  application = "my_app"
  region="us-west-2"

  prefix="${local.region}-${local.application}-${local.environment}"

  cwrole_name = "${local.prefix}-cwrole"
  cwpolicy_name = "${local.prefix}-cwpolicy"
  instance_profile_name = "${local.prefix}-instance-profile"
  security_group_name = "${local.prefix}-security-group"
  //ec2_instance_name = "${local.prefix}-ec2"
  

  projectTag = "my_app_mihailo"

}




provider "aws" {
  region="eu-central-1"
}


module "cwrole" {
    source = "./modules/cloudwatch_access_role" 
    role_name = local.cwrole_name  #mora postojati ova varijabla u variables delu modula

}

module "cwpolicy" {
    source = "./modules/cloudwatch_access_policy"
    depends_on = [ module.cwrole ]
    role_id = module.cwrole.role_id #role_id iz modula policy je onaj role_id iz modula role; ovde ga inicijalizujemo
    policy_name = local.cwpolicy_name
}

module "inst_profile" {
    source = "./modules/instance_profile"
    depends_on =  [module.cwrole.role_name]
    role_name = module.cwrole.role_name #ovde inicijalizujemo role_name
   
    instance_profile_name = local.instance_profile_name
    tag = local.projectTag

}

module "sg_for_ec2" {
  source = "./modules/ec2_sg"

  sg_name = local.security_group_name
  tag = local.projectTag
}

module "ec2" {

  source = "./modules/ec2"

  depends_on_one = [ module.inst_profile.inst_profile_name]
  depends_on_two = [ module.sg_for_ec2.sg_id ]

  instance_profile_name =local.instance_profile_name  // module.inst_profile.inst_profile_name
  sg_id = module.sg_for_ec2.sg_id

  tag = local.projectTag
  


}



