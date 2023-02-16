https://cloud.google.com/compute/docs/internal-dns#disabling-zonal-dns

### Practice Labs - Lab 06: 

Trabalhando com variáveis "complexas"

Instruções:

Para cada laboratório, crie um novo diretório. Caso haja qualquer erro, leia atentamente o terminal.

Utilize referências implicitas e explicitas se necessário.

A idéia durante esse laboratório é especializar ainda mais a infra construída até aqui. Vamos alterar algumas variáveis definidas nos laboratórios anteriores de modo que possamos adicionar mais um nível de especialização e automação na nossa infra.

Para agilizar a execução do LAB procure sempre reaproveitar códigos já escritos nos anteriores.

Para simplificar a validação das alterações crie inicialmente apenas os arquivos que fazem a definição da rede e depois os arquivos que definem a camada de processamento.

Aproveite parar fazer seus testes, todo novo recurso que for criado, faça sempre o `terraform validate`, `terraform plan` para verificar a saída no output.

#### Preparando a Rede

**- Na primeira parte** serão alterados as configurações do ambiente de network, para o uso de funções e variáveis complexas. Todas as demais definições de referenciamento, zonas e ips devem permanecer as mesmas do LAB03.

1. Crie um novo diretório com o nome LAB06.

2. Defina uma vpc não gerenciada, utilize variáveis para o nome da vpc e para o valor booleano que define a subrede como não gerenciada.

3. Crie uma regra de firewall com o nome 'allow-default-ports' liberando o protocolo icmp e as portas TCP 22, 80 para 0.0.0.0/0, para a VPC criada. Aplique uma **target_tag** com o nome `webapp`.

4. Crie 2 subredes nas regiões **us-east1** e **southamerica-east1**, com as faixas **192.168.10.0/24** e **192.168.20.0/24** respectivamente:

- O arquivo de definição da subnet deve conter apenas um bloco generico sendo incrementado por um `count`;
- Utilizando a função `format` defina nome da subnet utilizando um prefixo (ex. subnet) unido ao nome da vpc (ex.: subnet-vpc-example)
- Use variáveis do tipo list para armazenar os nomes das regiões e das faixas a serem utilizadas;
- Caso use o count, use a função `length` baseado na variável de regiões ou faixas para definir o tamanho da contagem.

5. Defina um output que exiba ao final do apply o nome das subnets criadas.

6. **Valide**, **Planeje** e **Aplique** as configuração alteradas até aqui, observe se os elementos foram criados na ordem correta obedecendo as dependências definidas.

7. Valide via `terraform state list` e também via console que o ambiente foi criado corretamente.

#### Adicionando o ambiente de processamento a Rede

**- Na segunda parte do LAB** serão criados 4 servidores WEB de backend e também 1 servidor de frontend que será utilizado para balancear o tráfego entre os servidores backend. Utilize os scripts de provisionamentos disponibilizados para configurar os servidores de back e o de front durante o provisionamento dos mesmos.

8. Crie variáveis para conter as definições de `image` e `machine_type` a serem utilizadas nos códitos de definição de todas as instâncias.

9. Adicione a tag `webapp` a todas as instâncias para permitir a aplicação da regra de firewall.

`
Como iremos usar um load balancer no nginx os nomes dos instâncias precisam ser conhecidas previamente por isso não estamos definindo esses nomes dinâmicamente como no caso das subnets
`

10. Criar 2 instâncias de backend na região **us-east1**:

- O trecho ou arquivo de definição dos backends deve conter apenas um bloco generico sendo incrementado por um `count`.
- Use a função `length` baseado na variável de zonas ou nomes para definir o tamanho da contagem.
- Use variáveis do tipo lista para armazenar os nomes e as zonas onde as instâncias devem ser provisionadas:
    - Nomes das instâncias: **webback1**, **webback2**. 
    - Zonas das instâncias: **us-east1-b** e **us-east1-c**
- Use o script de `prov-bach.sh` para provisionar automáticamente o nginx nas instâncias de backend durante a criação.
- Adicione o seguinte trecho a definição das instâncias de backend `metadata = { VmDnsSetting = "GlobalDefault" }`. (Este trecho vai possibilitar que as intâncias de backend sejam accessíveis pelo seus nomes independentemente da região ou da zona onde forem provisionadas)
- Use o seguinte trecho de código para referenciar a subnet: `subnetwork = google_compute_subnetwork.modelo-subnets[0].self_link`

11. Criar 2 instâncias de backend na região **soutamerica-east1**:

- O trecho ou arquivo de definição dos backends deve conter apenas um bloco generico sendo incrementado por um `count`.
- Use a função `length` baseado na variável de zonas ou nomes para definir o tamanho da contagem.
- Use variáveis do tipo lista para armazenar os nomes e as zonas onde as instâncias devem ser provisionadas:
    - Nomes das instâncias: **webback3** e **webback4**. 
    - Zonas das instâncias: **southamerica-east1-a**, **southamerica-east1-b**
- Use o script de `prov-back.sh` para provisionar automaticamente o nginx nas instâncias de backend durante a criação.
- Adicione o seguinte trecho a definição das instâncias de backend `metadata = { VmDnsSetting = "GlobalDefault" }`. (Este trecho vai possibilitar que as intâncias de backend sejam accessíveis pelo seus nomes independentemente da região ou da zona onde forem provisionadas)
- Use o seguinte trecho de código para referenciar a subnet: `subnetwork = google_compute_subnetwork.modelo-subnets[1].self_link`

11. Provisionar uma instância de frontend na zona `southamerica-east1-a`:

- Garanta que o frontend seja provisionado apenas **após concluído o provisionamento dos backends**. (Dica: use um trecho contendo uma dependência explicita)
- Use o script `prov-front.sh` para instalar o nginx e realizar a configuração do frontend.

12. Adicione um output para exibir o ip público da instancia de frontend.

13. **Valide**, **Planeje** e **Aplique** as configuração alteradas/criadas até aqui, observe se os elementos foram criados na ordem correta obedecendo as dependências definidas.

14. Acesse o endereço do ip público da instancia de frontend e confirme que o balanceamento está funcional.

15. Destrua todo o ambiente e valide que todos os elementos foram removidos via validação do state e também via console.

#### Criando o ambiente completo, com um só comando.

16. Execute novamente o comando apply para recriar todo o ambiente e teste novamente os acessos ao nginx.

17. Destrua todo o ambiente e valide que todos os elementos foram removidos via validação do state e também via console.
`
Obs: lembre-se de ao final destruir sua infraestrutura por questões de billing e manutenção sadia da sua free tier.
`