# Workspaces

Cada configuração do Terraform tem um back-end associado que define como o Terraform executa operações e onde o Terraform armazena dados persistentes, como o estado.

Os dados persistentes armazenados no back-end pertencem a um espaço de trabalho. Inicialmente, o back-end tem apenas um espaço de trabalho contendo um estado do Terraform associado a essa configuração. Alguns back-ends oferecem suporte a vários espaços de trabalho nomeados, permitindo que vários estados sejam associados a uma única configuração. A configuração ainda tem apenas um back-end, mas você pode implantar várias instâncias distintas dessa configuração sem configurar um novo back-end ou alterar as credenciais de autenticação.


![Ingress Nginx](/images/workspaces.png)

#### DOC DE REFERÊNCIA TERRAFORM

- [HCL Reference - Workspaces](https://developer.hashicorp.com/terraform/language/state/workspaces#workspaces "HCL Reference - Workspaces")
- [Cloud Docs - Workspaces](https://developer.hashicorp.com/terraform/cloud-docs/workspaces "Cloud Docs - Workspaces")
- [HCL Reference - conditionals](https://developer.hashicorp.com/terraform/language/expressions/conditionals "HCL Reference - Functions - Format")