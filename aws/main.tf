
resource "aws_instance" "rapidinfra" {
 ami               = var.ami_images[var.region]
 availability_zone = var.avaliability_zone
 instance_type     = var.instance_type
 key_name          = var.key_name


 tags=  {
   Name = "rapidproxy"
   App = "development"
 }
}

output "public_ip" {
  value       = aws_instance.rapidinfra.public_ip
  description = "The public IP of the web server"
}
output "dns_name" {
  value = aws_instance.rapidinfra.public_dns
  description = "The Public DNS"
}
