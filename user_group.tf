resource "aws_iam_access_key" "lb" {
  user = ansible.lb.name
}

resource "aws_iam_group" "ansible_group" {
  name = "ansible_group"
}