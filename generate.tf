terraform {
  backend "s3" {
    bucket = "terraform-state-project-glass"
    key    = "Base-infra.state"
    region = "ap-south-1"
  }
}

resource "aws_nat_gateway" "dev-vpc-natGateway-1" {
  allocation_id            = "eipalloc-09652fa48819e9fb3"
  connectivity_type        = "public"
  private_ip               = "192.71.128.57"
  secondary_allocation_ids = []
  subnet_id                = "subnet-034a8ea37fde5dd8a"
  tags = {
    Name = "dev-vpc-natGateway-1"
  }
  tags_all = {
    Name = "dev-vpc-natGateway-1"
  }
}


resource "aws_nat_gateway" "dev-vpc-natGateway-2" {
  allocation_id            = "eipalloc-058ed5f4d40cdebaa"
  connectivity_type        = "public"
  private_ip               = "192.71.148.249"
  secondary_allocation_ids = []
  subnet_id                = "subnet-0ddbc873e92125964"
  tags = {
    Name = "dev-vpc-natGateway-2"
  }
  tags_all = {
    Name = "dev-vpc-natGateway-2"
  }
}

resource "aws_internet_gateway" "dev-vpc-igw" {
  tags = {
    Name = "dev-vpc-igw"
  }
  tags_all = {
    Name = "dev-vpc-igw"
  }
  vpc_id = "vpc-090ce815e237be241"
}

resource "aws_subnet" "dev-vpc-subnet-private2-ap-south-1b" {
  assign_ipv6_address_on_creation                = false
  availability_zone                              = "ap-south-1b"
  cidr_block                                     = "192.71.144.0/20"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_native                                    = false
  private_dns_hostname_type_on_launch            = "ip-name"
  tags = {
    Name = "dev-vpc-subnet-private2-ap-south-1b"
  }
  tags_all = {
    Name = "dev-vpc-subnet-private2-ap-south-1b"
  }
  vpc_id = "vpc-090ce815e237be241"
}

resource "aws_subnet" "dev-vpc-subnet-public2-ap-south-1b" {
  assign_ipv6_address_on_creation                = false
  availability_zone                              = "ap-south-1b"
  cidr_block                                     = "192.71.16.0/20"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_native                                    = false
  private_dns_hostname_type_on_launch            = "ip-name"
  tags = {
    Name = "dev-vpc-subnet-public2-ap-south-1b"
  }
  tags_all = {
    Name = "dev-vpc-subnet-public2-ap-south-1b"
  }
  vpc_id = "vpc-090ce815e237be241"
}

resource "aws_subnet" "dev-vpc-subnet-public1-ap-south-1a" {
  assign_ipv6_address_on_creation                = false
  availability_zone                              = "ap-south-1a"
  cidr_block                                     = "192.71.0.0/20"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_native                                    = false
  private_dns_hostname_type_on_launch            = "ip-name"
  tags = {
    Name = "dev-vpc-subnet-public1-ap-south-1a"
  }
  tags_all = {
    Name = "dev-vpc-subnet-public1-ap-south-1a"
  }
  vpc_id = "vpc-090ce815e237be241"
}

resource "aws_subnet" "dev-vpc-subnet-private1-ap-south-1a" {
  assign_ipv6_address_on_creation                = false
  availability_zone                              = "ap-south-1a"
  cidr_block                                     = "192.71.128.0/20"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_native                                    = false
  private_dns_hostname_type_on_launch            = "ip-name"
  tags = {
    Name = "dev-vpc-subnet-private1-ap-south-1a"
  }
  tags_all = {
    Name = "dev-vpc-subnet-private1-ap-south-1a"
  }
  vpc_id = "vpc-090ce815e237be241"
}

resource "aws_security_group" "dev-vpc-security-group" {
  description = "Created by RDS management console"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = ["182.71.110.6/32", "182.71.29.112/32", "182.72.143.218/32", "182.72.143.219/32"]
    description      = ""
    from_port        = 5432
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 5432
  }]
  name                   = "dev-vpc-security-group"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-090ce815e237be241"
}

resource "aws_db_instance" "dev-database-postgres" {
  allocated_storage                     = 50
  allow_major_version_upgrade           = null
  apply_immediately                     = null
  auto_minor_version_upgrade            = true
  availability_zone                     = "ap-south-1b"
  backup_retention_period               = 7
  backup_target                         = "region"
  backup_window                         = "20:57-21:27"
  ca_cert_identifier                    = "rds-ca-rsa2048-g1"
  character_set_name                    = null
  copy_tags_to_snapshot                 = true
  custom_iam_instance_profile           = null
  customer_owned_ip_enabled             = false
  db_name                               = null
  db_subnet_group_name                  = "dev-vpc-subnet-group"
  dedicated_log_volume                  = false
  delete_automated_backups              = true
  deletion_protection                   = false
  domain                                = null
  domain_auth_secret_arn                = null
  domain_fqdn                           = null
  domain_iam_role_name                  = null
  domain_ou                             = null
  enabled_cloudwatch_logs_exports       = []
  engine                                = "postgres"
  engine_lifecycle_support              = "open-source-rds-extended-support-disabled"
  engine_version                        = "16.3"
  final_snapshot_identifier             = null
  iam_database_authentication_enabled   = false
  identifier                            = "dev-database-postgres"
  identifier_prefix                     = null
  instance_class                        = "db.m5.2xlarge"
  iops                                  = 0
  kms_key_id                            = "arn:aws:kms:ap-south-1:412381764486:key/718333ce-e6b0-43ea-b0b3-e678ca800a2f"
  license_model                         = "postgresql-license"
  maintenance_window                    = "sat:12:05-sat:12:35"
  manage_master_user_password           = null
  master_user_secret_kms_key_id         = null
  max_allocated_storage                 = 1000
  monitoring_interval                   = 60
  monitoring_role_arn                   = "arn:aws:iam::412381764486:role/rds-monitoring-role"
  multi_az                              = false
  nchar_character_set_name              = null
  network_type                          = "IPV4"
  option_group_name                     = "default:postgres-16"
  parameter_group_name                  = "default.postgres16"
  password                              = null # sensitive
  performance_insights_enabled          = true
  performance_insights_kms_key_id       = "arn:aws:kms:ap-south-1:412381764486:key/718333ce-e6b0-43ea-b0b3-e678ca800a2f"
  performance_insights_retention_period = 7
  port                                  = 5432
  publicly_accessible                   = true
  replica_mode                          = null
  replicate_source_db                   = null
  skip_final_snapshot                   = true
  snapshot_identifier                   = null
  storage_encrypted                     = true
  storage_throughput                    = 0
  storage_type                          = "gp2"
  tags                                  = {}
  tags_all                              = {}
  timezone                              = null
  upgrade_storage_config                = null
  username                              = "postgres"
  vpc_security_group_ids                = ["sg-07f49b3e041245224"]
}

resource "aws_vpc" "dev-vpc" {
  assign_generated_ipv6_cidr_block     = false
  cidr_block                           = "192.71.0.0/16"
  enable_dns_hostnames                 = true
  enable_dns_support                   = true
  enable_network_address_usage_metrics = false
  instance_tenancy                     = "dedicated"
  ipv4_ipam_pool_id                    = null
  ipv4_netmask_length                  = null
  ipv6_cidr_block                      = null
  ipv6_cidr_block_network_border_group = null
  ipv6_ipam_pool_id                    = null
  tags = {
    Name = "dev-vpc"
  }
  tags_all = {
    Name = "dev-vpc"
  }
}
