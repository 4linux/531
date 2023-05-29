# Data-Sources + Meta-Arguments + Functions + Complex Types

`Data Sources` permitem que o Terraform use informações definidas fora do Terraform, definidas por outra configuração separada do Terraform ou modificadas por funções.

Recursos são o elemento mais importante na linguagem Terraform. Cada bloco de recurso descreve um ou mais objetos de infraestrutura. Os `Meta-Arguments` são argumentos especiais que podem ser usados com cada tipo de recurso, durante essa aula vamos tratar especificamente de dois meta-argumentos: `count` e `for_each`.

A linguagem Terraform inclui várias funções integradas que você pode chamar de dentro de expressões para transformar e combinar valores. A sintaxe geral para chamadas de função é um nome de função seguido por argumentos separados por vírgula entre parênteses.

Um tipo complexo é um tipo que agrupa vários valores em um único valor. Existem duas categorias de tipos complexos: tipos de coleção (para agrupar valores semelhantes) e tipos estruturais (para agrupar valores potencialmente diferentes).

#### DOC DE REFERÊNCIA TERRAFORM
- [HCL Reference - Data Sources](https://developer.hashicorp.com/terraform/language/data-sources "HCL Reference - Data Sources")
- [HCL Tutorials - Query Data Sources](https://developer.hashicorp.com/terraform/tutorials/configuration-language/data-sources "HCL Tutorials - Query Data Sources")
- [Data Sources - Google Compute Network](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_network "Data Sources - Google Compute Network") 
- [Data Sources - Google Compute Disk](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_disk "Data Sources - Google Compute Disk")
- [HCL Reference - Functions - Format](https://www.terraform.io/language/functions/format "HCL Reference - Functions - Format")
- [HCL Reference - Functions - Length](https://www.terraform.io/language/functions/length "HCL Reference - Functions - Length")
- [HCL Reference - Functions - Length](https://www.terraform.io/language/functions/values "HCL Reference - Functions - Values")
- [HCL Reference - Resources](https://developer.hashicorp.com/terraform/language/resources "HCL Reference - Resources")
- [HCL Reference - Meta-Arguments - count](https://developer.hashicorp.com/terraform/language/meta-arguments/count "HCL Reference - Meta-Arguments - count")
- [HCL Reference - Meta-Arguments - for_each](https://developer.hashicorp.com/terraform/language/meta-arguments/for_each "HCL Reference - Meta-Arguments - for_each")
- [HCL Reference - Types](https://developer.hashicorp.com/terraform/language/expressions/types#types "HCL Reference - Types")
- [HCL Reference - Complex Types](https://developer.hashicorp.com/terraform/language/expressions/type-constraints#complex-types "HCL Reference - Complex Types")

