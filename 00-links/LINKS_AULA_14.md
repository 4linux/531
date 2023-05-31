# Utilizando Módulos

Além dos módulos do sistema de arquivos local, o Terraform pode carregar módulos de um registro público ou privado. Isso torna possível publicar módulos para outros usarem e usar módulos que outros publicaram. O Terraform Registry hospeda uma ampla coleção de módulos Terraform disponíveis publicamente para configurar vários tipos de infraestrutura comum. Esses módulos são gratuitos para uso e o Terraform pode baixá-los automaticamente se você especificar a fonte e a versão apropriadas em um bloco de chamada de módulo.

O argumento `source` em um bloco de módulo informa ao Terraform onde encontrar o código-fonte para o módulo filho desejado. O Terraform usa isso durante a etapa de instalação dos módulos do `terraform init` para baixar o código-fonte em um diretório no disco local para que outros comandos do Terraform possam usá-lo.

#### DOC DE REFERÊNCIA TERRAFORM

- [HCL Reference - published-module](https://developer.hashicorp.com/terraform/language/modules#published-modules "published-module")
- [HCL Reference - Module Sources](https://www.terraform.io/language/modules/sources "Module Sources")
- [GCP Network Module](https://registry.terraform.io/modules/terraform-google-modules/network "GCP Network Module")
