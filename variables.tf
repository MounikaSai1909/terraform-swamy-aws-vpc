## Project variables
variable "project_name" {
    type = string
}

variable "environment" {
    type = string
    default = "dev"
}

variable "common_tags" {
    type = map
}

## VPC variables
variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
 
}

variable "enable_dns_hostnames" {
    type = bool
    default = true
}

variable "vpc_tags" {
    type = map
    default = {}
}

## igw variables
variable "igw_tags" {
    type = map
    default = {}
}

# Public subnet variables
variable "public_subnet_cidrs"  {
    type = list
    validation {
    condition   = length(var.public_subnet_cidrs) == 2
    error_message = "Please provide 2 valid public_subnet_cidrs"
    }
}

variable "public_subnet_tags" {
    default = {}
}

# private subnet variables
variable "private_subnet_cidrs"  {
    type = list
    validation {
    condition   = length(var.private_subnet_cidrs) == 2
    error_message = "Please provide 2 valid private_subnet_cidrs"
    }
}

variable "private_subnet_tags" {
    default = {}
}

# database subnet variables
variable "database_subnet_cidrs"  {
    type = list
    validation {
    condition   = length(var.database_subnet_cidrs) == 2
    error_message = "Please provide 2 valid database_subnet_cidrs"
    }
}

variable "database_subnet_tags" {
    default = {}
}


variable "db_subnet_group_tags" {
    default = {}
}

## nat_gw variables
variable "nat_gw_tags" {
    default = {}
}

# Route table variables
variable "public_route_table_tags" {
    default = {}
}

variable "private_route_table_tags" {
    default = {}
}

variable "database_route_table_tags" {
    default = {}
}

## Peering ##

variable "is_peering_required" {
    type = bool
    default = false
}

variable "acceptor_vpc_id" {
    type = string
    default = ""
}

variable "vpc_peering_tags" {
    type =  map
    default = {}
}