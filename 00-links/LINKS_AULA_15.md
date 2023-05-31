# Project Time

<div align="center">

![gcp-load-balancer.png](./images/gcp-load-balancer.png)

</div>

Para criar um ambiente do Google Cloud Platform (GCP) que implementa um balanceador de carga para distribuir o tráfego entre grupos de instâncias do Compute Engine usando o Terraform, você precisaria usar os seguintes recursos do Terraform:

1. `google_compute_network`: Este recurso representa uma rede de nuvem virtual (VPC) do GCP. Você pode usá-lo para criar a rede onde suas instâncias residirão.

2. `google_compute_firewall`: Este recurso permite criar regras de firewall para controlar o tráfego de rede em suas instâncias do Compute Engine. Ele permite definir regras de firewall para controlar o tráfego de rede entre o load balancer e as instâncias do Compute Engine.

2. `google_compute_region_instance_group_manager`: Este recurso define um gerenciador de grupo de instâncias regional no GCP. Você criará vários gerenciadores de grupo de instâncias para distribuir sua carga de trabalho em diferentes regiões. Cada gerenciador de grupo de instâncias irá gerenciar um grupo de instâncias do Compute Engine que lidará com seu tráfego.

3. `google_compute_instance_template`: Este recurso permite que você defina um modelo para suas instâncias do Compute Engine. Você pode especificar propriedades da instância, como tipo de máquina, disco de inicialização, tags de rede, etc. Esse modelo será usado pelo gerenciador de grupo de instâncias para criar instâncias dentro do grupo gerenciado.

4. `google_compute_backend_service`: Este recurso representa um serviço de backend do balanceador de carga no GCP. Você criará um serviço de backend para definir o conjunto de gerenciadores de grupo de instâncias que lidarão com seu tráfego.

5. `google_compute_health_check`: Este recurso define uma verificação de integridade para o balanceador de carga. Ele permite monitorar a saúde de suas instâncias e remover as instâncias não saudáveis ​​do pool de balanceamento de carga.

6. `google_compute_target_pool`: Este recurso representa um pool de destino para o balanceador de carga. Você associará o serviço de backend ao pool de destino, que será o destino para o tráfego recebido.

7. `google_compute_http_health_check` ou `google_compute_tcp_health_check`: Dependendo do tipo de balanceador de carga que você deseja criar (HTTP ou TCP), você usará o recurso `google_compute_http_health_check` ou `google_compute_tcp_health_check` para definir as configurações de verificação de integridade específicas do protocolo.

8. `google_compute_forwarding_rule`: Este recurso define a regra de encaminhamento para o balanceador de carga. Ele especifica o endereço IP externo e a(s) porta(s) em que ouvirá o tráfego e encaminhará para o pool de destino.

Esses são os recursos-chave do Terraform que você precisaria usar para criar um ambiente GCP com um balanceador de carga que distribui o tráfego entre grupos de instâncias do Compute Engine usando o recurso `google_compute_region_instance_group_manager`. Você pode configurar esses recursos de acordo com seus requisitos específicos, como configuração de certificados SSL, afinidade de sessão ou outros recursos avançados de balanceamento de carga oferecidos pelo GCP.

<div align="center">

![gcp-load-balancer.png](./images/final-project.png)

</div>

#### DOC DE REFERÊNCIA

1. [GCP Network Module](https://registry.terraform.io/modules/terraform-google-modules/network "GCP Network Module")
2. [Module Sources](https://www.terraform.io/language/modules/sources "Module Sources")
---