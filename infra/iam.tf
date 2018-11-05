# IAM resources for cluster creation

resource "aws_iam_group" "kops" {
  name = "kops"
}

resource "aws_iam_group_policy_attachment" "kops" {
  count = "${length(var.kops_policy)}"

  group      = "${aws_iam_group.kops.name}"
  policy_arn = "${element(var.kops_policy, count.index)}"
}

resource "aws_iam_user" "kops" {
  name = "kops"
}

resource "aws_iam_group_membership" "kops" {
  name = "kops_group_membership"

  users = ["${aws_iam_user.kops.name}"]
  group = "${aws_iam_group.kops.name}"
}
