#
# Variables Configuration. Check for REPLACE to substitute custom values. Check the description of each
# tag for more information
#

variable "cluster_name" {
  description = "Name of the Kubernetes cluster"
  default = "egov-sandbox" #REPLACE
}

variable "vpc_cidr_block" {
  description = "CIDR block"
  default = "192.168.0.0/16"
}


variable "network_availability_zones" {
  description = "Configure availability zones configuration for VPC. Leave as default for India. Recommendation is to have subnets in at least two availability zones"
  default = ["ap-south-1b", "ap-south-1a"] #REPLACE IF NEEDED
}

variable "availability_zones" {
  description = "Amazon EKS runs and scales the Kubernetes control plane across multiple AWS Availability Zones to ensure high availability. Specify a comma separated list to have a cluster spanning multiple zones. Note that this will have cost implications"
  default = ["ap-south-1b"] #REPLACE IF NEEDED
}

variable "kubernetes_version" {
  description = "kubernetes version"
  default = "1.29"
}

variable "instance_type" {
  description = "eGov recommended below instance type as a default"
  default = "r5ad.large"
}

variable "override_instance_types" {
  description = "Arry of instance types for SPOT instances"
  default = ["r5a.large", "r5ad.large", "r5d.large", "m4.xlarge"]
  
}

variable "number_of_worker_nodes" {
  description = "eGov recommended below worker node counts as default"
  default = "6" #REPLACE IF NEEDED
}

variable "ssh_key_name" {
  description = "ssh key name, not required if your using spot instance types"
  default = "egov-sandbox-ssh-key" #REPLACE
}

variable "public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDAVuFdu5ITNLtM7ce35B7eKu48G1B/AyF0IXi4AKVQDgw5A1u0aVOMvmxvoDxxKs9PaCQuQnUQXlIoFVQlB+xMsjaYNl4Fq+CkXbJVuh6Y+clqul9xwUR0aZAA9zJYvwQrs2cmj3NzTDE2+D2mqrMwvjJepwp0DZRWm0rarhIN7VpTmxVnOipgJFwFCbmqDfeM9/sqADZawmfKZYs24DU0BWBRJD6wXJmng/v5B0hhLTvClqD+19myHC78uc62F9zIduLvNgxUWpUiB6rGTnbVaT3TTCe6LTQwtyDiy39vut/9ROMtJs6/k6MEldRwtjCMQJXF02RcXERVWPtGqdIdpuTPGTqY8WdNGb8BmnjiF+HYx18SGtcA0sPWgSI50/P2TXsjSluWdetuySxyEHsdUNyuvxKzyLOZ2b+VQbj7aYsesRVnTp1jE617LNnb4nt0M3ZXvM7z8pbS/djEMAWb7SbmrhRWyy0DnGn+5qja+Ry9x2fOLOde4FNXIOGKuO8="
  description = "ssh key"
}

## change ssh key_name eg. digit-quickstart_your-name



