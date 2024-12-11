![alt text](vpc_module_diagram_2_lyst1715839481379.jpeg)

This module is developed for joindevops.com,We are creating following resources.This module create resources in first 2 availability zones for High availability.

* VPC
* IGW
* IGW and VPC attachment
* 2 Public subnets
* 2 private subnets
* 2 Database subnets
* EIP
* NAT Gateway
* Public route table
* Private route table
* Database route table
* Routes in all tables
* Route table and subnet association
* Peering if required for user
* Routes of peering in requestor and acceptor VPC

## Inputs:
* project_name(Required): User should mention their project name,type is string
* environment: (optional) : Default value is dev,type is string
* common_tags (Required) : User should provide their tags related to their project,type is map
* vpc_cidr (optional) : default value is "10.0.0.0/16",type is string
* enable_dns_hostnames (optional) : Default value is true,type is boolean
* vpc_tags (optional) : Default value is empty,type is map
* igw_tags (optional) : Default value is empty,type is map
* public_subnet_cidrs (Required) : User has to provide 2 valid subnet CIDR.
* public_subnet_cidr_tags (optional) : Default value is empty,type is map
* private_subnet_cidrs (Required) : User has to provide 2 valid subnet CIDR.
* private_subnet_cidr_tags (optional) : Default value is empty,type is map
* database_subnet_cidrs (Required) : User has to provide 2 valid subnet CIDR.
* database_subnet_cidr_tags (optional) : Default value is empty,type is map
* database_subnet_group_tags (optional) : Default value is empty,type is map
* nat_gateway_tags (optional) : Default value is empty,type is map
* public_route_table_tags (optional) : Default value is empty,type is map
* private_route_table_tags (optional) : Default value is empty,type is map
* database_route_table_tags (optional) : Default value is empty,type is map
* is_peering_required (optional) : default value is false
* acceptor_vpc_id (optional) : default value is empty,default vpc id would be taken,type is string
* vpc_peering_tags (optional) : default value is empty,typem is map


## Outputs:

* vpc_id : VPC id
* public_subnet_ids : A list of 2 public subnet IDs created
* private_subnet_ids : A list of 2 private subnet IDs created
* database_subnet_ids : A list of 2 database subnet IDs created
* database_subnet_group_id : A database subnet group id created