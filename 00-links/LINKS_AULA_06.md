# ALTERANDO GRADATIVAMENTE SUA INFRAESTRUTURA

Quando temos mais de 1 arquivo no diretório raiz do Terraform, por padrão, ele irá ler todos os arquivos .tf e irá executar cada um deles. Caso queriramos realizar alterações nos recursos de forma um pouco mais controlada, podemos controlar o fluxo de execução do terraform através de um dos sub-comandos para o comando `terraform plan/apply/destroy` mais o parâmetro `-target`. 

O comando tem a seguinte sintaxe:

```sh
terraform <ação> -target=recurso.nome_do_recurso <-auto-approve>
```

Exemplo:

1. plan
```sh
terraform plan -target=google_compute_network.vpc_network
```

2. apply
```sh
terraform apply -target=google_compute_network.vpc_network
```

3. destroy
```sh
terraform destroy -target=google_compute_network.vpc_network
```

---

#### DOC DE REFERÊNCIA TERRAFORM

1. [HCL Reference Configuration](https://www.terraform.io/docs/language/syntax/configuration.html "HCL Reference Configuration")
3. [Compute Instance - Attached Disk](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance#nested_attached_disk "Attached Disk")