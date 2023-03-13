#### ALTERANDO GRADATIVAMENTE SUA INFRAESTRUTURA

Como temos mais de 1 arquivo, o Terraform irá ler todos os arquivos .tf e irá executar cada um deles, mas não queremos isso neste momento, queremos criar recursos de forma um pouco mais controlada. 
Um dos sub-comandos para o comando `terraform plan/apply/destroy` e o `-target`. 

O comando tem a seguinte sintaxe:

```sh
terraform <ação> -target=recurso.nome_do_recurso
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
terraform plan -target=google_compute_network.vpc_network
```

---

#### DOC DE REFERÊNCIA TERRAFORM

1. [HCL Reference Configuration](https://www.terraform.io/docs/language/syntax/configuration.html "HCL Reference Configuration")
3. [Compute Instance - Attached Disk](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance#nested_attached_disk "Attached Disk")

---
#### Practice Labs - Lab 02: 

Alterando gradativamente a sua infraestrutura

Instruções:

Para cada laboratório, crie um novo diretório.

Aproveite parar fazer seus testes, todo novo atributo que for criado, faça sempre o `terraform validate`, `terraform plan` para verificar a saída no output.

Quanto solicitado execute o `terraform apply` com o parâmetro 

Caso haja qualquer erro, leia atentamente o terminal.

1. Inicialize o provider.

2. Crie o código de uma rede no **modo auto** (as subredes devem ser criadas automaticamente) com o nome **vpc-lab02**, mas **não aplique as alterações**, execute apenas o validate e verifique o plano de execução.

3. Crie o código para uma regra de firewall para a **vpc-lab02**, liberando apenas a **porta 22** e o protocolo icmp, novamente **não aplique**, execute apenas o `validate` e verifique o plano de execução:
- Dados sugeridos:
    - *name*: allow-default-ports

4. Crie o código de uma nova instância, que use a rede **vpc-lab02**, com um ip público efêmero. **Não aplique as alterações**, execute apenas o `validate` e verifique o plano de execução.

5. Crie gradativamente a sua infra utilizando o parâmetro "-target". Valide os objetos guardados no estado do terraform (`terraform state list`) após cada execução. (Diga de ordem de execução: rede, firewall, instancia)

6. Valide na console da GCP a criação dos itens até aqui.

7. Faça uma verificação mais detalhada da instância criada, confirme que foi criada na rede **vpc-lab02** e não na rede default. Copie o ip publico da instância

8. Valide a aplicação da regra referente a liberação ICMP realizando o um ping para o ip publico da instância partindo da sua máquina local.

9. Valide a aplicação da regra referente a liberação SSH. Pela console acesse o SSH da instancia criada.

10. Destrua gradativamente a sua infra-estrutura utilizando o parâmetro "-target" para evitar problemas de dependências.

11. Valide na console que todos os recursos foram destruídos com sucesso.

`
Obs: lembre-se de ao final destruir sua infraestrutura por questões de billing e manutenção sadia da sua free tier.
`