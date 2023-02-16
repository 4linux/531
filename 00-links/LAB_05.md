
#### DOC DE REFERÊNCIA TERRAFORM

1. [HCL Reference - Local Values](https://www.terraform.io/language/values/locals "HCL Reference - Local Values")
2. [HCL Reference - Variables](https://www.terraform.io/language/values/variables "HCL Reference - Variables")
3. [HCL Reference - Outputs](https://www.terraform.io/language/values/outputs "HCL Reference - Outputs")
4. [HCL Reference - Functions - File](https://www.terraform.io/language/functions/file "HCL Reference - Functions - File")


### Practice Labs - Lab 05: 

Trabalhando com variáveis

Instruções:

Para cada laboratório, crie um novo diretório. Caso haja qualquer erro, leia atentamente o terminal. Sempre que possível utilize referências implicitas para garantir que sua infra seja criada na ordem correta.

Durante esse laboratório vamos alterar a infra criada no LAB 03, transformando todos os parâmetros possíveis em `variables` e/ou `locals` quando for mais conveniente.

Para simplificar a validação das alterações copie inicialmente apenas os arquivos que fazem a definição da rede e depois os arquivos que definem a camada de processamento.

Além disso será criado uma configuração de output para exibir algumas informações das instâncias criadas. 

##### Preparando a Rede

1. Crie um novo diretório com o nome LAB05.

2. Crie um novo arquivo variables.tf vazio.

###### Alterando a configuração da rede.

**- Na primeira parte** serão alterados as configurações do ambiente de network, para o uso de variáveis e locals. Todas as demais definições de referenciamento, zonas e ips devem permanecer as mesmas do LAB03, apenas substituir nos códigos dos recursos os valores literais por variáveis.

3. Copie os arquivos com a definição do **provider** e os que contem as definições da **vpc**, **subnets** e **firewall** da pasta do LAB03 para a pasta do LAB05.

4. Crie 1 variável booleana com o nome `vpc_gerenciada` **sem valor padrão**. Altere o arquivo network.tf para passar a variável como valor para o parâmetro `auto_create_subnetworks`. (Dica: lembre-se de passar o valor false no momento da execução, já que estamos criando uma rede não gerenciada, caso contrário o código de criação das subnets vai falhar.)

5. Crie 1 variável para armazenar o nome a ser usado na VPC, faça a alteração correspondente no arquivo network.tf.

6. Crie variáveis para armazenar os valores `name` e `region` para as subnet1 e subnet2, faça a alteração no arquivo correspondente para passar a usar as variáveis (defina os valores a serem utilizados como default ou passe os valores em um arquivos terraform.tfvars)

7. Altere a regra de firewall com o nome 'allow-ssh':

- A regra do SSH deve passar a ser **habilitada por padrão**.

- Mantenha o `source_range` já especificado e adicione o parâmetro **target_tags** com uma tag: `allow-ssh` (Dica: consulte o a documentação google_compute_firewall para um exemplo de sintaxe do target_tags).

8. **Valide**, **Planeje** e **Aplique** as configuração alteradas até aqui, observe se os elementos foram criados na ordem correta obedecendo as dependências definidas.

9. Valide via `terraform state list` e também via console que o ambiente foi criado corretamente.

##### Alterando o ambiente de processamento para uso de variáveis

- **Na segunda parte do LAB** serão alterados as configurações do ambiente de processamento, para o uso de variáveis e locals. Todas as demais definições de referenciamento, zonas e ips devem permanecer as mesmas do LAB03, apenas substituir nos códigos dos recursos os valores literais por variáveis.

10. Copie os arquivos que contem as definições do **disco** e das instâncias, **dbserver1**, **web1** e **web2** da pasta do LAB03 para a pasta do LAB05.

11.  Crie um novo arquivo locals e defina um novo `local` com o nome **db_zone**, para definir qual zona (us-east1-c) deve ser utilizada para criar o disco e também o servidor de banco.

12. Crie uma variável do tipo number para definir o tamanho do disco a ser criado. Faça as alterações devidas no arquivo do disco.

13.  **Instância dbserver1**: Crie variáveis para armazenar os valores `name`, `machine_type` e `image` para a instância **dbserver1**. Faça a alteração no arquivo correspondente para passar a usar as variáveis. (Defina os valores a serem utilizados como default ou passe os valores em um arquivos terraform.tfvars)

14. **Instâncias webserver1 e webserver2**: Crie variáveis para armazenar os valores de `name`, `machine_type`, `zone` e `image` para as instâncias **webserver1** e **webserver2**. Faça a alteração no(s) arquivo(s) correspondente(s) para passar a usar as variáveis. (defina os valores a serem utilizados como default ou passe os valores em um arquivos terraform.tfvars)

15. Crie uma variável para armazenar o valor a ser chamado em `metadata_startup_script`. No caso da variável armazene o caminho do arquivo para provisionamento do nginx.

16. Altere o arquivo de definição da instância dbserver1 para adicionar a network **tag**: "allow-ssh". (Dica: verifique a documentação do google_compute_engine)

##### Criando os arquivos de output

17. Crie um novo arquivo de output que exiba na saída as seguintes informações para as 3 instâncias do ambiente:

- self_link;
- zona;
- nat_ip;

18. **Valide**, **planeje** e **aplique** as configurações observe se os elementos foram criados na ordem correta obedecendo as dependências definidas.

19. Valide via `terraform state` e também via console que o ambiente foi criado corretamente.

##### Validando o ambiente criado

20. Tente acessar o SSH da instância web1. (Como a tag `allow-ssh` foi aplicada apenas ao dbserver1, só será possível realizar o ssh para essa instância.

21. Acesse o SSH da instância dbsever1 via console e valide quantos discos existem. Dica: use o comando `lsblk`. (Dica: o disco deve ser listado como um dispositivo `sdb`)

22. Em um browser acesse os ips públicos dos servidores web1 e web2 para garantir que o nginx foi instalado.

23. Destrua todo o ambiente e valide que todos os elementos foram removidos via validação do state e também via console.

##### Criando o ambiente completo, com um só comando.

24. Execute novamente o comando apply para recriar todo o ambiente e teste novamente os acessos ao nginx.

25. Destrua todo o ambiente e valide que todos os elementos foram removidos via validação do state e também via console.
`
Obs: lembre-se de ao final destruir sua infraestrutura por questões de billing e manutenção sadia da sua free tier.
`