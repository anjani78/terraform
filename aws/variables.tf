variable "region" {
  default = "ap-south-1"
  description = "Default Region"
}

variable  "ec2_count" {
  default = 1
  description = "Count of EC2 instance"
}


variable "key_name" { 
 default  = "anjaniaws"
 description = "SSH Key to ec2 instance"
}

variable "avaliability_zone" {
  default = "ap-south-1b"
}

variable "instance_type" {
 description = "Type of EC2 to use"
 default = "t2.micro"
}

variable "ami_images" {
  type = map

  default = {
     "us-east-1" = "ami-b374d5a5"
     "us-west-2" = "ami-4b32be2b"
     "ap-south-1" = "ami-0620d12a9cf777c87"

 }
}

variable "ami_image" {
 default = "ami-0620d12a9cf777c87"
}

variable "autoscale_min" {
 description= "The minimum number of EC2 instances"
 default = 2
}

variable "autoscale_max" {
 description= "The maximum number of EC2 instances"
 default = 5
}

variable "autoscale_desired" {
 description = "Desired autoscale (number of EC2)"
 default = 3
}

variable "alb_name" {
 description = "Human-friendly application load balancer name"
 default = "my-alb"
}
