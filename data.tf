data "aws_iam_policy_document" "app-assume-role" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      type        = "Service"
      identifiers = concat(["pinpoint.amazonaws.com"], var.assume_role_identifiers)
    }
  }
}