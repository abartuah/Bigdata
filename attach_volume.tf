resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdc"
  volume_id   = aws_ebs_volume.ebsvolume.id
  instance_id = aws_instance.webos1.id
  force_detach = true
}
