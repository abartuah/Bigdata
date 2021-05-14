resource "aws_ebs_volume" "ebsvolume" {
  availability_zone = aws_instance.webos1.availability_zone
  size              = 1

  tags = {
    Name = "Web Server HD by TF"
  }
}
