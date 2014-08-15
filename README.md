Ruby 1.9.x

# Problema
A legislação em vigor obriga os bancos a iniciarem o atendimento a um cliente em no máximo 20 minutos após a entrada do cliente na fila única da agência bancária. A fila é única, assim um caixa livre solicita ao primeiro cliente da fila que venha ao seu guichê para ser atendido. (Vamos ignorar aqui o problema dos clientes prioritários, idosos, gestantes, portadores de necessidades especiais, etc.) Estamos supondo também que nenhum caixa atende dois clientes ao mesmo tempo. 
Seu programa receberá o número de caixas ativas na agência, o número de clientes e, para cada cliente, duas informações, a saber, o momento de entrada do cliente na fila, e a duração do atendimento daquele cliente. Inicialmente todos os caixas estão vazios, já que a agência acabou de abrir.
Seu problema é determinar o número de clientes que esperarão mais de 20 minutos para ter seu atendimento iniciado.

### Entrada
A primeira linha da entrada contém dois inteiros separados por um espaço em branco. O primeiro, C, é o número de caixas ativas na agência bancária. O segundo, N, o número de clientes que procurarão atendimento na agência naquele dia.
As próximas N linhas terão cada uma informações sobre um cliente, consistindo de dois inteiros, T e D, separados por um espaço em branco. O inteiro T fornece o momento em que o cliente entra na fila, em minutos, a partir do instante de abertura da agência. O inteiro D fornece, em minutos, o tempo necessário para atender o cliente.
As linhas estão ordenadas por entrada dos clientes na fila.
Saída
A saída deverá conter apenas uma linha, contendo um único inteiro, o número de clientes cujo atendimento será iniciado mais do que 20 minutos após sua entrada na fila.

### Restrições
```
1 ≤ C ≤ 10
1 ≤ N ≤ 1000
0 ≤ T ≤ 300
1 ≤ D ≤ 10
```
### Exemplos

### Exemplo 1
Entrada

1 5
0 10
0 10
1 10
2 10
30 10

Saída
1

### Exemplo 2
Entrada

3 16
0 10
0 10
0 10
3 10
5 10
7 10
11 10
13 10
14 10
15 10
16 10
17 10
18 3
19 10
20 10
23 3

Saída
2