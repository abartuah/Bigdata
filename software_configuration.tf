
resource "null_resource"  "nullremote" {

depends_on = [
  aws_volume_attachment.ebs_att
]

connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("C:/Users/gagandeep kumar/Downloads/terraform_key_pair.pem")
    host     = aws_instance.webos1.public_ip
  }

provisioner "remote-exec" {
    inline = [
      "sudo yum  install httpd  -y",
      "sudo  yum  install php  -y",
      "sudo systemctl start httpd",
      "sudo systemctl start httpd",
      "sudo mkfs.ext4 /dev/xvdc",
      "sudo  mount /dev/xvdc  /var/www/html",
      "sudo yum install git -y",
      "sudo git clone https://github.com/geekgodgagan/yourtruefriend.git   /var/www/html/web"

    ]
  }

}
