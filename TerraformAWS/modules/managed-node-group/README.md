<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.51.0 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [aws_eks_node_group.eks_managed_node_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_node_group) | resource |
| [aws_iam_role.eks_mng_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.eks_mng_role_attachment_cni](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.eks_mng_role_attachment_ecr](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.eks_mng_role_attachment_worker](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_eks_cluster_name"></a> [eks\_cluster\_name](#input\_eks\_cluster\_name) | O nome do cluster EKS onde o Node Group será criado | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | O nome do projeto para tags dos recursos | `string` | n/a | yes |
| <a name="input_subnet_id_1"></a> [subnet\_id\_1](#input\_subnet\_id\_1) | O ID da primeira subnet para o Node Group AZ 1 | `string` | n/a | yes |
| <a name="input_subnet_id_2"></a> [subnet\_id\_2](#input\_subnet\_id\_2) | O ID da segunda subnet para o Node Group AZ 2 | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags para ser adicionado aos recursos da AWS | `map(any)` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->