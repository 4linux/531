# Data-Sources + Meta-Arguments + Functions + Complex Types

Local Values no Terraform são variáveis ​​locais que permitem que você armazene valores intermediários e os utilize em vários locais do seu código Terraform, evitando repetições desnecessárias de código. Você pode definir uma expressão para um local value, que pode incluir referências a outras variáveis ​​ou recursos, e o Terraform garantirá que essa expressão seja avaliada corretamente.

Variáveis no Terraform são usadas para fornecer valores de entrada para o seu código. Elas podem ser definidas em um arquivo separado, passadas como argumentos na linha de comando ou definidas dentro do arquivo de configuração. As variáveis ​​podem ter tipos definidos, como string, número ou lista, e podem ser usadas em expressões dentro do seu código Terraform.

Outputs no Terraform são valores que seu código Terraform expõe para que possam ser consumidos por outros sistemas. Eles geralmente representam informações importantes sobre o ambiente que o Terraform criou, como endereços IP ou nomes de domínio. Você pode definir um output para qualquer valor que desejar expor e, em seguida, referenciar esse valor em outro código Terraform ou em scripts externos. O Terraform garantirá que o valor do output esteja disponível após a criação do ambiente.

#### DOC DE REFERÊNCIA TERRAFORM
- [HCL Reference - Data Sources](https://developer.hashicorp.com/terraform/language/data-sources "HCL Reference - Data Sources")
- [HCL Tutorials - Query Data Sources](https://developer.hashicorp.com/terraform/tutorials/configuration-language/data-sources "HCL Tutorials - Query Data Sources")
- [HCL Reference - Functions - Format](https://www.terraform.io/language/functions/format "HCL Reference - Functions - Format")
- https://developer.hashicorp.com/terraform/language/meta-arguments/count
- [HCL Reference - Values](https://developer.hashicorp.com/terraform/language/values "HCL Reference - Local Values")
- [HCL Reference - Variables](https://www.terraform.io/language/values/variables "HCL Reference - Variables")
- [HCL Reference - Primitive Types](https://developer.hashicorp.com/terraform/language/expressions/type-constraints#complex-types "HCL Reference - Primitive Types")
- [HCL Reference - Operators](https://developer.hashicorp.com/terraform/language/expressions/operators "HCL Reference - Operators")
- [HCL Reference - Outputs](https://www.terraform.io/language/values/outputs "HCL Reference - Outputs")
