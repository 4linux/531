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
| [google_compute_instance.vm](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vm_image"></a> [vm\_image](#input\_vm\_image) | Esta variável deve do tipo string e deverá receber um nome de resource | `string` | `"debian-cloud/debian-10"` | no |
| <a name="input_vm_machine_type"></a> [vm\_machine\_type](#input\_vm\_machine\_type) | Esta variável deve do tipo string e deverá receber um tamanho de máquina para o Google Cloud Platform | `string` | `"e2-micro"` | no |
| <a name="input_vm_name"></a> [vm\_name](#input\_vm\_name) | Esta variável deve do tipo string e deverá receber um nome de resource | `string` | `"vm-linux"` | no |
| <a name="input_vm_network"></a> [vm\_network](#input\_vm\_network) | rede onde a vm deve ser provisionada | `string` | n/a | yes |
| <a name="input_vm_project"></a> [vm\_project](#input\_vm\_project) | Projeto onde a vm deve ser provisionada | `string` | n/a | yes |
| <a name="input_vm_subnet"></a> [vm\_subnet](#input\_vm\_subnet) | rede onde a vm deve ser provisionada | `string` | n/a | yes |
| <a name="input_vm_zone"></a> [vm\_zone](#input\_vm\_zone) | Em qual zona sua instância irá ficar | `string` | `"us-central1-c"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vm_id"></a> [vm\_id](#output\_vm\_id) | ID da instancia |
| <a name="output_vm_name"></a> [vm\_name](#output\_vm\_name) | Nome da vm criada |
| <a name="output_vm_nat_ip"></a> [vm\_nat\_ip](#output\_vm\_nat\_ip) | IP Publico da Instancia |
| <a name="output_vm_self_link"></a> [vm\_self\_link](#output\_vm\_self\_link) | Self Link da instancia |
| <a name="output_vm_zone"></a> [vm\_zone](#output\_vm\_zone) | Zona onde a instância foi provisionada |
