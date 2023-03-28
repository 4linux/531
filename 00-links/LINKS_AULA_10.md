# Locals + Variabels + Outputs

Local Values no Terraform são variáveis ​​locais que permitem que você armazene valores intermediários e os utilize em vários locais do seu código Terraform, evitando repetições desnecessárias de código. Você pode definir uma expressão para um local value, que pode incluir referências a outras variáveis ​​ou recursos, e o Terraform garantirá que essa expressão seja avaliada corretamente.

Variáveis no Terraform são usadas para fornecer valores de entrada para o seu código. Elas podem ser definidas em um arquivo separado, passadas como argumentos na linha de comando ou definidas dentro do arquivo de configuração. As variáveis ​​podem ter tipos definidos, como string, número ou lista, e podem ser usadas em expressões dentro do seu código Terraform.

Outputs no Terraform são valores que seu código Terraform expõe para que possam ser consumidos por outros sistemas. Eles geralmente representam informações importantes sobre o ambiente que o Terraform criou, como endereços IP ou nomes de domínio. Você pode definir um output para qualquer valor que desejar expor e, em seguida, referenciar esse valor em outro código Terraform ou em scripts externos. O Terraform garantirá que o valor do output esteja disponível após a criação do ambiente.

#### DOC DE REFERÊNCIA TERRAFORM

1. [HCL Reference - Local Values](https://www.terraform.io/language/values/locals "HCL Reference - Local Values")
2. [HCL Reference - Variables](https://www.terraform.io/language/values/variables "HCL Reference - Variables")
3. [HCL Reference - Outputs](https://www.terraform.io/language/values/outputs "HCL Reference - Outputs")
4. [HCL Reference - Functions - File](https://www.terraform.io/language/functions/file "HCL Reference - Functions - File")