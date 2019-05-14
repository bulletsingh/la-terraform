#----Output from storage------

output "Bucket Name" {
  value = "${module.storage.bucketname}"
}


#----Networking Output -------

output "public_subnets" {
  value = "${join(", ", module.networking.public_subnets)}"
}

output "subnet_ips" {
  value = "${join(", ", module.networking.subnet_ips)}"
}

output "Public Security Groups" {
  value = "${module.networking.public_sg}"
}


#----Compute Outputs

output "Public Instance IDs" {
  value = "${module.compute.server_id}"
}

output "Public Instance IPs" {
  value = "${module.compute.server_ip}"
}