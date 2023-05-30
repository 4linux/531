# Escrevendo Módulos

Um módulo é um contêiner para vários recursos que são usados juntos. Você pode usar módulos para criar abstrações simples, de modo que possa descrever sua infraestrutura em termos de arquitetura, em vez de diretamente em termos de objetos físicos. Os arquivos `.tf` em seu diretório de trabalho quando você executa o `terraform plan` ou `terraform apply` formam o módulo raiz. Esse módulo pode chamar outros módulos e se conectar a eles passando os valores de saída de um para valores de entrada de outro.

De muitas maneiras, os módulos Terraform são semelhantes aos conceitos de bibliotecas, pacotes ou módulos encontrados na maioria das linguagens de programação e fornecem muitos dos mesmos benefícios.

#### DOC DE REFERÊNCIA TERRAFORM

- [Visão Geral de Módulos](https://developer.hashicorp.com/terraform/tutorials/modules/module "Visão Geral de Módulos")
- [Criando Módulos](https://developer.hashicorp.com/terraform/language/modules/develop "Criando Módulos")
- [Criando e Usando Modulos Locais](https://learn.hashicorp.com/tutorials/terraform/module-create?in=terraform/modules "Criando e Usando Modulos Locais")
- [Padrões Recomendados para criação de módulos](https://developer.hashicorp.com/terraform/tutorials/modules/pattern-module-creation "Padrões Recomendados para criação de módulos")
- [terraform-docs](https://terraform-docs.io/ "terraform-docs")