#### DOC DE REFERÊNCIA

1. [GCP Network Module](https://registry.terraform.io/modules/terraform-google-modules/network "GCP Network Module")
2. [Module Sources](https://www.terraform.io/language/modules/sources "Module Sources")

--

### Practice Labs - Lab 09

Criando e usando módulos locais

Instruções:

Para cada laboratório, crie um novo diretório. Caso haja qualquer erro, leia atentamente o terminal.

Utilize referências implicitas e explicitas sempre que necessário.

Aproveite parar fazer seus testes, todo novo recurso que for criado, faça sempre o `terraform validate`, `terraform plan` para verificar a saída no output.

1. Crie um novo diretorio LAB09 e dentro dele um diretorio tf-modules.

#### Criando um módulo pra rede

**- Criar um módulo local para criar VPC, o módulo deve permitir a escolha de rede gerenciada ou não.**

2. Crie um módulo para criar uma VPC.
- O módulo deve suportar como parâmetros de entrada ao menos: name, description, project, auto_create_subnetworks.
- Ao menos parâmetros: project e auto_create_subnetworks devem ser requeridos. (Ou seja, não devem possuir valores padrão no módulo)
- Crie outputs para seu módulo: o modulo deve exportar ao menos os parâmetros: name, id, self_link e project

3. O módulo de VPC deve incluir uma regra de firewall padrão liberando o protocolo icmp e a porta tcp 22, associado a VPC criada.

4. Crie a documentação para o seu módulo, arquivos README.md e LICENSE (O arquivo README.md deve conter no mínimo uma descrição do que faz o módulo)

5. Na raiz do LAB09, crie um arquivo .tf para consumir, testar o módulo. Fazer a opção de criação de uma VPC `auto`.

6. **Valide**, **Planeje** e **Aplique** as configuração alteradas/criadas até aqui, observe se os elementos foram criados na ordem correta obedecendo as dependências definidas.

7. Valide que a infra foi criada com sucesso.

#### Criando um módulo para instância

**- Criar módulo para criar instâncias em uma VPC gerenciada ou não**

8. Crie um módulo que crie instancias:

- O resultado do módulo deve ser a crianção de uma instância;
- O modulo deve receber como parâmetro, no mínimo: name, project, zone, network, subnetwork, machine_type, image.
- Os parâmetros **network**, **subnetwork** e **project** devem ser obrigatórios.
- A instância deve ser criada com ip público.
- Crie outputs para seu módulo: o modulo deve exportar ao menos os parâmetros: name, id, self_link, zone, e nat_ip.

9. Na raiz do LAB08, crie um arquivo .tf para consumir, testar o módulo e criar a instância (Lembre de usar a vpc criada usando o módulo criado anteriormente.

`
Dica: para definir a subnet no consumo da instância use o parâmetro `name` exportado no output do módulo de vpc.
`

10. Exiba o ip publico da instância ao final da criação da instância

11. **Valide**, **Planeje** e **Aplique** as configuração alteradas/criadas até aqui, observe se os elementos foram criados na ordem correta obedecendo as dependências definidas.

12. Valide que a infra foi criada com sucesso e realize um ping ao ip publico exibido.

13. Destrua toda a infra.

---

## EXTRA ## Criando um módulo pra subrede

- Criar um módulo para gerenciar subredes

1. Crie um módulo para criar 1 subrede.

2. O modulo deve receber como parâmetro, no mínimo: name, description, region, network, ip_cidr_range. (Dica: para simplificar a implementação utilize o mesmo nome da vpc como nome da subnet)

3. Os parâmetros region, networks devem ser obrigatórios.

4. Crie outputs para seu módulo: o modulo deve exportar ao menos os parâmetros: name, id, self_link, region e network.

5. Na raiz do LAB09, crie um arquivo .tf para consumir os módulos de VPC e subnet, testar o módulo e criar a vpc e a subnet

6. **Valide**, **Planeje** e **Aplique** as configuração alteradas/criadas até aqui, observe se os elementos foram criados na ordem correta obedecendo as dependências definidas.

7. Valide que a infra foi criada com sucesso.


`
Obs: lembre-se de ao final destruir sua infraestrutura por questões de billing e manutenção sadia da sua free tier.
`
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