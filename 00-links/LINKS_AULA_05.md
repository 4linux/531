# Criando as configurações iniciais

#### CRIANDO CHAVE PARA CONTA DE SERVICO NA GCP

1. [Create Service Account](https://console.cloud.google.com/apis/credentials/serviceaccountkey "Create Service Account")

#### OBTENDO ID DO PROJETO NO CONSOLE GCP

2. [Project ID](https://console.cloud.google.com/home/dashboard "Project ID")

Referência na apostila: `PÁGINA 39`

---
#### EXPORTANDO VARIAVEIS DE AMBIENTE

1. Adicionar caminho absoluto do arquivo.json que contem sua `ServiceAccountKey` obtida na criação da key:

- Linux:

```sh
export GOOGLE_APPLICATION_CREDENTIALS="/seu/path/para/arquivo.json"
```

- Windows:

```sh
set GOOGLE_APPLICATION_CREDENTIALS="c:/path/para/arquivo.json"
```

2. Adicionar `ID do projeto` GCP:

- Linux:

```sh
export GOOGLE_PROJECT="seu-project-id"
```

- Windows:

```sh
set GOOGLE_PROJECT="seu-project-id"
```

---
### ADICIONANDO VARIAVEIS DE AMBIENTE NO BASH PROFILE

```sh
sudo tee -a ~/.bashrc > /dev/null <<EOF
# EXPORTING PROVIDER GCP VARS TO TERRAFORM
export GOOGLE_APPLICATION_CREDENTIALS="/seu/path/para/arquivo.json"
export GOOGLE_PROJECT="seu-project-id"
EOF
```
---
#### RESOLVENDO PROBLEMA DE EXPORT NO WINDOWS

```sh
provider "google" {
  project     = "project-id"
  credentials = "c:/path/para/arquivo.json"
}
```
---

#### COMANDOS DE REFERENCIA

1. Para inicializar o Provider, utilize o comando o comando de inicialização:

```sh
terraform init
```

2. O plano de execução do Terraform irá mostrar no terminal o que será criado ou modificado em sua infraestrutura,caso houver qualquer tipo de alteração de valores o Terraform irá mostrar qual o valor original e qual o novo valor que será inserido.

O comando para planejar o que será criado é o seguinte:

```sh
terraform plan
```

3. Para aplicar de fato sua infraestrutura, o comando é o `apply`, que basicamente é a saída apresentada no comando do “plan”.

```sh
terraform apply 
```

O sub-comando `-auto-approve`, indica que não queremos confirmação para criar infraestrutura.

4. Da mesma forma que se constrói infraestrutura, podemos deletar utilizando o sub-comando destroy.

```sh
terraform destroy
```

Da mesma forma que fizemos com o `apply`, aqui também podemos passar o subcomando `-auto-approve` para não pedir confirmação.

---

#### DOC DE REFERÊNCIA TERRAFORM

1. [Getting Started](https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/getting_started "Getting Started")
2. [Provider Reference](https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/provider_reference "Provider Reference")
3. [HCL Reference Configuration](https://www.terraform.io/docs/language/syntax/configuration.html "HCL Reference Configuration")
4. [terraform init](https://www.terraform.io/docs/cli/commands/init.html "terraform init")
5. [terraform apply](https://www.terraform.io/docs/cli/commands/apply.html "terraform apply")
6. [terraform destroy](https://www.terraform.io/docs/cli/commands/destroy.html "terraform destroy")

#### DOC DE REFERÊNCIA GCP

1. [Disk Types](https://cloud.google.com/compute/docs/disks#disk-types "Disk Types")
2. [Google Compute Network](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network "Google Compute Network")
3. [Compute Instance - Attached Disk](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance#nested_attached_disk "Attached Disk")
4. [Compute Instance - Compute Instance](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance "Compute Instance - Compute Instance")
5. [Images List](https://cloud.google.com/compute/docs/images/os-details?hl=pt-br "Images List")

----

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