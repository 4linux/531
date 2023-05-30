## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_firewall.allow_default_ports](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_network.vpc_network](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_subnets"></a> [auto\_subnets](#input\_auto\_subnets) | Usada para definir se as subnets devem ser criadas automaticamente | `bool` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Define o nome da VPC | `string` | `"vpc-terraform"` | no |
| <a name="input_vpc_project"></a> [vpc\_project](#input\_vpc\_project) | Define o nome do projeto onde a vpc será criada | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_firewall_rule_name"></a> [firewall\_rule\_name](#output\_firewall\_rule\_name) | firewall\_rule\_name |
| <a name="output_firewall_rule_selflink"></a> [firewall\_rule\_selflink](#output\_firewall\_rule\_selflink) | firewall\_rule\_selflink |
| <a name="output_vpc_name"></a> [vpc\_name](#output\_vpc\_name) | vpc\_name |
