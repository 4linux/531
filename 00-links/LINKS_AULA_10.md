#### DOC DE REFERÊNCIA

1. [GCP Network Module](https://registry.terraform.io/modules/terraform-google-modules/network "GCP Network Module")
2. [Module Sources](https://www.terraform.io/language/modules/sources "Module Sources")
---

### Practice Labs - Lab 10

Criando e usando módulos locais

Instruções:

Para cada laboratório, crie um novo diretório. Caso haja qualquer erro, leia atentamente o terminal.

Utilize referências implicitas e explicitas sempre que necessário.

Aproveite parar fazer seus testes, todo novo recurso que for criado, faça sempre o `terraform validate`, `terraform plan` para verificar a saída no output.

Sempre que necessário e possível utilize variáveis e estruras de laço para armazenar

1. Crie um novo diretorio LAB10 e copie o arquivo provider.tf para esse diretório

#### Consumindo um módulo de rede

2. Crie uma VPC não gerenciada e duas subnets consumindo o modulo publico oficial da GCP no registry do terraform.
- Crie as subnets com o mesmo nome da VPC para simplificar a implementação.
- Cria as subnets nas regioes **us-central1** e **us-east1**
- Definas as faixas **10.10.10.0/24** e **10.10.20.0/24** para as subnets, respectivamente.

3. Consuma e exiba a saídas dos self_link, da VPC e das subnets.

4. Crie uma regra de firewall liberando o protocolo icmp e a porta tcp/22 e 80 e associe a regra a VPC criada. A idéia é testar a interação entre módulos e recusos então crie a regra de firewall utilizando o *resource* `google_compute_firewall` fazendo o link com a VPC criada.

#### Consumindo um módulo de intance

5. Crie uma instâncias na subnet criada no item anterior consumindo o módulo de instancia que criamos no LAB08

6. **Valide**, **Planeje** e **Aplique** as configuração alteradas/criadas até aqui, observe se os elementos foram criados na ordem correta obedecendo as dependências definidas.

9. Valide que a infra foi criada com sucesso.

10. Destrua a infra.

`
Obs: lembre-se de ao final destruir sua infraestrutura por questões de billing e manutenção sadia da sua free tier.
`