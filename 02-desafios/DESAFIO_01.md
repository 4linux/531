# Desafio 01

## Criando configurações iniciais

Instruções:

Para cada laboratório, crie um novo diretório.

Para evitar erros realize cada item do exercício por partes, ou seja, crie e aplique cada parte da sua infraestrutura separadamente.

Como forma de organizar o código e facilitar a leitura do mesmo utilize um arquivo .tf separado para cada recurso.

Aproveite para fazer seus testes, para todo novo atributo que for criado, faça sempre o `terraform validate`, `terraform plan` para verificar a saída no output e só depois o `terraform apply` 

Caso haja qualquer erro, leia atentamente o terminal.

1. Crie um novo arquivo de provider e inicialize o Provider

2. Crie o código para uma nova VPC no *modo auto* (nome sugerido: vpc-lab01). *Valide*, *planeje* e *aplique* as alterações.

3. Crie o código para um disco de persistente de 30GB, do **tipo balanceado**. *Valide*, *planeje* e *aplique* as alterações. (dica: consulte na documentação da GCP os tipos existentes de disco e como referenciar o tipo balanceado)

4. Valide na console da GCP a criação dos itens até aqui. 

5. Crie o código para uma nova instância, na rede *default*, com um ip público efêmero. *Valide*, *planeje* e *aplique* as alterações.
- Dados sugeridos:
  - *name*: vm1
  - *image*: debian-cloud/debian-11
  - *zone*: southamerica-east1-a

`
(dica: valide na documentação do resource *google_compute_instance* como atribuir um ip público à instância.)
`

6. Teste o acesso SSH na máquina via console da GCP.

7. Instale o serviço de nginx no servidor: 

```sh
sudo apt-get install nginx -y
```

8. Teste o acesso ao serviço do nginx acessando o ip público da intância.

9. Crie uma regra de firewall liberando, a porta **tcp 80** para 0.0.0.0/0, na **rede default**

10. Teste novamente o acesso ao serviço do nginx acessando o ip público do seu ambiente.

`
(Não há por padrão, na rede default, uma regra liberando a porta 80.)
`

11. Destrua os recursos criados.

12. Valide na console que todos os recursos foram destruídos com sucesso.

`
Obs: lembre-se de ao final destruir sua infraestrutura por questões de billing e manutenção sadia da sua free tier.
`

