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

#### Practice Labs - Lab 04: 

Trabalhando com estado

Instruções:

Para cada laboratório, crie um novo diretório. Caso haja qualquer erro, leia atentamente o terminal.

Utilize referências implicitas e explicitas se necessário.

##### Criando uma estrutura de exemplo

1. Crie um novo arquivo de provider e inicialize o Provider

2. Crie uma nova rede rede gerenciada com o nome vpc-teste.

3. Crie uma nova rede **não gerenciada** com o nome vpc-teste2.

4. Crie uma regra de firewall **NA REDE DEFAULT** a porta tcp/80 para 0.0.0.0/0. (Dica: não é possível usar referência implicita aqui já que a rede default já está criada na infra da GCP e não é gerenciada pelo terraform, veremos depois como obter esses dados para podermos referenciar no nosso código)

6. Valide via terraform state e via console que os recursos foram criados com sucesso.

##### Usando o state remoto uma estrutura de exemplo

7. Crie um novo diretorio (state) dentro do diretorio lab04 para armazenar as definições de state

8. Copie o arquivo de configuração do provider para o diretorio state.

9. Crie e aplique o código para criar um bucket cloud storage para armazenar remotamente o estado da nossa infra. (dica: lembre-se de habilitar o versionamento)

`
O nome de um bucket precisa ser único a nível de toda a gcp, desse modo pode ser necessario vc testar mais de um nome
`

##### Usando o state remoto uma estrutura de exemplo

10. Na pasta original do lab04 altere o bloco `terraform` incluindo a configuração de backend apontando para o bucket criado.

11. Execute novamente o terraform init de modo a transferir o arquivo de state para o bucket.

12. Use o comando `terraform state list` para validar os recursos atualmente gerenciados pelo terraform.

13. Use o comando `terraform state rm` para remover a vpc-teste e a regra de firewall do estado de modo que eles permanecam na GCP mesmo depois do destroy.

14. Destrua a infraestrutura remanescente.

15. Valide via console que a regra de firewall e a rede vpc-teste continuam presentes na configuração da GCP.

16. Importe novamente a rede vpc-teste para o state e valide a importação utilizando os subcomandos `list` e `show` do state.

17. Destrua toda a infraestrutura, em seguinda entre na pasta state e destrua também o bucket. **OBS.: A regra de firewall que foi removido do estado  no passo 13 deve permanecer criado na rede default. Valide se a regra permanece via console.**

`
Obs: lembre-se de ao final destruir sua infraestrutura por questões de billing e manutenção sadia da sua free tier.
`