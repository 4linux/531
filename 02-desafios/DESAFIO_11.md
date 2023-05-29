### Practice Labs - Lab 07

Project Time 01

Instruções:

Para cada laboratório, crie um novo diretório. Caso haja qualquer erro, leia atentamente o terminal.

Utilize referências implicitas e explicitas sempre que necessário.

A idéia durante o laboratório é criarmos a estrutura inicial do nosso projeto final, que basicamente vai definir uma nova rede, um modelo de instância e os instances groups.

Para agilizar a execução do LAB procure sempre reaproveitar códigos já escritos nos anteriores. Sempre que possível utilize variáveis e Meta-Arguments (`count` ou `for_each`) para automatizar e generalizar o código.

Aproveite parar fazer seus testes, todo novo recurso que for criado, faça sempre o `terraform validate`, `terraform plan` para verificar a saída no output.

#### Preparando a primeira parte do projeto.

**- Na primeira parte** será criada a estrutura básica para comportar nossos ambientes as configurações do ambiente de network e firewall.

1. Crie um novo diretório com o nome PROJETOFINAL.

2. Defina uma vpc auto (criar redes automáticamente).

3. Crie uma regra de firewall com o nome 'allow-default-ports' liberando o protocolo icmp e as portas TCP 22, 80, 443 para 0.0.0.0/0, para a VPC criada. Aplique uma **target_tag** com o nome `webapps`.

**- Na segunda parte** serão criadas as definições de modelos de instância e de grupos de instâncias.

4. Crie um instance template para ser utilizado no provisionamento das VMs (Dica: verifique a documentação do recurso `google_compute_instance_template`)
- Defina que as VMs do template usem a rede gerenciada criado no passo 2.
- Lembre-se de definir a TAG para que a regra de firewall seja aplicada;
- Use a imagem `debian-cloud/debian-11`;
- Aplique ao template o `metadata-startup-script` usando o script de provisionamento de backends;
- Habilite o ip publico no template;

5. Crie 3 instance groups, nas regiões `us-central1`, `us-east1` e `soutamerica-east1`, defina o **target_size** de cada instance group para **2** de modo que duas instâncias sejam criadas distribuídas entre as zonas de cada região.

6. **Valide**, **Planeje** e **Aplique** as configuração alteradas/criadas até aqui, observe se os elementos foram criados na ordem correta obedecendo as dependências definidas.

7. Via console acesse o endereço do ip público de cada instancia e confirme que o script de provisionamento, que faz o deploy de um index.html customizado foi aplicado com sucesso.

8. Destrua todo o ambiente e valide que todos os elementos foram removidos via validação do state e também via console.

`
Obs: lembre-se de ao final destruir sua infraestrutura por questões de billing e manutenção sadia da sua free tier.
`