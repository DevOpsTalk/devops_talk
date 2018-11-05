# Create hosted zone on AWS

resource "aws_route53_zone" "devops_talk" {
  name = "devopstalk.com"
}
