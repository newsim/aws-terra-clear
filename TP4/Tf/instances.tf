# Adapter le nom à l'usage
# un nom doit être unique pour un compte AWS
# donné
resource "aws_key_pair" "kp_wordpress_common" {
  key_name = "kp_wordpress_common"
  # généré par ssh-keygen ...
  public_key = file("../ssh-keys/id_rsa_wordpress_common.pub")
}


resource "aws_instance" "bastion" {
  # Ubuntu 18.04 fournie par AWS
  ami                         = var.amis[var.region]
  instance_type               = "t2.micro"
  key_name                    = "key_bastion"
  vpc_security_group_ids      = [aws_security_group.sg_bastion.id]
  subnet_id                   = aws_subnet.subnet_example.id
  private_ip                  = "10.42.1.10"
  associate_public_ip_address = "true"
  user_data                   = file("../Scripts/bastion.sh")
  tags = {
    Name = "bastion"
  }
}

output "tfinstance1_ip" {
  value = "${aws_instance.bastion.*.public_ip}"
}