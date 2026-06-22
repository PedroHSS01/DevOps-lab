resource "aws_iam_role" "eks_controller_role" {
  name               = "${var.project_name}-aws-load-balancer-controller-role"
  assume_role_policy = <<EOF
  {
  "Version":"2012-10-17", 
  "Statement": [ 
    {
      "Sid": "AllowAccessToECSForInfrastructureManagement", 
      "Effect": "Allow", 
      "Principal": {
        "Service": "ecs.amazonaws.com" 
      }, 
      "Action": "sts:AssumeRole" 
    } 
  ] 
}
EOF
  tags = merge(
    var.tags,
    {
      name = "${var.project_name}-aws-load-balancer-controller-role"
    }
  )
}
resource "aws_iam_role_policy_attachment" "eks_controller_role_attachment" {
  role       = aws_iam_role.eks_controller_role.name
  policy_arn = aws_iam_policy.eks_controller_policy.arn
}
