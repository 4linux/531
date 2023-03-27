#### TRABALHANDO COM ESTADO

No Terraform, um backend determina como serão armazenados e como será carregado um estado de uma infraestrutura. Por padrão Terraform grava o estado de uma infraestrutura localmente no arquivo terraform.tfstate em formato JSON do diretório que está sendo executado.

Quando se trabalha em times, backends serão gravados remotamente e protegidos contra qualquer tipo de corrupção utilizando locks de gravação. Backends também protegem dados sensíveis pois quando forem chamados para serem utilizados, os dados são armazenados em memória.

#### DOC DE REFERÊNCIA TERRAFORM

1. [Backends](https://www.terraform.io/language/settings/backends/configuration "Backends")
2. [Google Storage Bucket](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket "Google Storage Bucket")
3. [Manipulating State](https://www.terraform.io/cli/state "Manipulating State")
4. [Importing Infrastructure](https://www.terraform.io/cli/import "Importing Infrastructure")


#### DOC DE REFERÊNCIA GCP

1. [Google Cloud Storage](https://cloud.google.com/storage/docs "Google Cloud Storage")
2. [Storage Locations](https://cloud.google.com/storage/docs/locations "Storage Locations")