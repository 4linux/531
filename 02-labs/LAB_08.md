### Practice Labs - Lab 08

Utilizando worksapces

Instruções:

Para cada laboratório, crie um novo diretório. Caso haja qualquer erro, leia atentamente o terminal.

Utilize referências implicitas e explicitas sempre que necessário.

A idéia durante o laboratório é criarmos a estrutura inicial do nosso projeto final, que basicamente vai definir uma nova rede, um modelo de instância e os instances groups.

Aproveite parar fazer seus testes, todo novo recurso que for criado, faça sempre o `terraform validate`, `terraform plan` para verificar a saída no output.

#### Trabalhando com workspaces

1. Crie um novo diretorio LAB08 e copie o arquivo de `provider` para esse diretório

2. Crie um workspace com o nome prod.

3. Crie as definições de uma vpc nao gerenciada, uma subnet, uma regra de firewall e uma instancia com as devidas alterações para uso dos workspaces.

`Para a workspace de prod devem ser criadas 2 instâncias para qualquer outro, deve ser criado apenas uma instância.`

4. Crie um novo workspace dev.

5. Valide via terraform state list que o estado do ambiente dev está vazio.

6. Aplique a configuração para criar o ambiente de dev.

7. Valide via console que os recursos (vpc, subnet e rede) estão duplicados, com as devidas identificações dos ambientes.

8. Destrua a infra criada no workspace de DEV.

9. Valide via terraform state e via console que o ambiente foi destruído.

10. Alterne para a workspace de prod, valide via `state list` que a infra ainda exite.

11. Destrua a infra de prod.

12. Alterne para a workspace default e remova as workspaces de dev e de prod.

`
Obs: lembre-se de ao final destruir sua infraestrutura por questões de billing e manutenção sadia da sua free tier.
`