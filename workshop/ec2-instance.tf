variable "sshkeypath" {
  default = ""
}

resource "aws_key_pair" "ssh_key" {
  key_name = ""
  public_key = file(var.sshkeypath)
}


resource "aws_instance" "first_instance" {
  ami = "ami-04b9e92b5572fa0d1"

  subnet_id = "subnet-0d26fa40"

  key_name = aws_key_pair.ssh_key.key_name

  instance_type = "t2.micro"

  associate_public_ip_address = true
}
