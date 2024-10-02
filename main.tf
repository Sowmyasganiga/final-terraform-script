provider "aws" {
  region = "us-east-1"  # Change to your desired region
}

module "route53" {
  source = "../route53-setup"
}

module "s3" {
  source = "../s3-website-hosting"
}

module "ecs_cluster" {
  source = "../ecs-cluster"
}

module "ecs_task" {
  source = "../ecs-task-definition"
}

module "rds" {
  source = "../rds-setup"
}
