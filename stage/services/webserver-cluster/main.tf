provider "aws" {
  region = "ap-northeast-2"
}

module "webserver_cluster" {
 source = "../../../modules/services/webserver-cluster"
 instance_type = "t3.micro"
 cluster_name = "webservers-stage"
 db_remote_state_bucket = "terraform-state-guswl-wave"
 db_remote_state_key = "stage/data-stores/mysql/terraform.tfstate"
 min_size = 2
 max_size = 2
}
