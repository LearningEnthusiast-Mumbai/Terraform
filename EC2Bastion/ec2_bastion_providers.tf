resource "null_resource" "bastion_eip" {
  depends_on = [aws_eip.bastion_eip]
  connection {
    type        = "ssh"
    host        = aws_eip.bastion_eip.public_ip
    user        = "ec2-user"
    private_key = file("private-key/vims.pem")
  }

  # File provisioner to copy the script to the bastion host
  provisioner "file" {
    source      = "private-key/vims.pem"
    destination = "/tmp/vims.pem"
  }

  # Remote-exec provisioner to run the script on the bastion host
  provisioner "remote-exec" {
    inline = [
      "chmod 400 /tmp/vims.pem",
      "echo 'Bastion host setup complete!'"
    ]
  }

  #local-exec provisioner to output the public IP of the bastion host
  provisioner "local-exec" {
    command     = "echo 'Bastion host public IP: ${module.ec2_public_instance.public_ip}' >> bastion_ip.txt"
    working_dir = "local-exec-output-path"
  }
}