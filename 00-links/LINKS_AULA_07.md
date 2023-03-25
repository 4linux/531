# Trabalhando com dependências

No Terraform, as dependências podem ser classificadas em duas categorias: dependências explícitas e dependências implícitas. Dependências explícitas são definidas diretamente no código, enquanto as dependências implícitas são inferidas pelo próprio Terraform a partir do relacionamento entre os recursos.

As dependências explícitas são especificadas usando o meta argumento `depends_on`. Por outro lado, as dependências implícitas são inferidas pelo Terraform a partir do relacionamento entre os recursos, no caso da GCP a linkagem implicita entre os recursos é feito utilizando-se o atributo de referênia `self_link`.


## DOC DE REFERÊNCIA TERRAFORM

- [Dependências entre recursos](https://developer.hashicorp.com/terraform/language/resources/behavior#resource-dependencies "Dependências entre recursos")
- [Linkando Recursos da GCP](https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/getting_started#linking-gcp-resources "Linkando Recursos da GCP")
- [depends_on](https://developer.hashicorp.com/terraform/language/meta-arguments/depends_on "depends_on")