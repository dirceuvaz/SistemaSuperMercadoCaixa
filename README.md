# Projeto Supermercado - Consultar Clientes

Este projeto foi desenvolvido na IDE Eclipse utilizando a Linguagem Java e o Tomcat como servidor web.

## Descrição

Este projeto consiste em uma aplicação web para consultar e adicionar clientes a um sistema de supermercado. Utiliza JSP (JavaServer Pages) para criar a interface de usuário e Java para o backend. O método `HashMap` é utilizado para armazenar os clientes e realizar as operações de adição e busca.

## Tecnologias Utilizadas

- IDE: Eclipse
- Linguagem: Java
- Servidor Web: Tomcat
- Frontend: HTML, Bootstrap 5
- Backend: Java

## Estrutura do Projeto

O projeto está estruturado da seguinte maneira:

- `index.jsp`: Página principal da aplicação que permite adicionar e buscar clientes.
- `Programa.ProcessadorDados`: Classe Java que processa os dados dos clientes.
- `Programa.Cliente`: Classe Java que representa um cliente com nome e CPF.

## Uso das Classes e Métodos

### Classe `Programa.ProcessadorDados`

Esta classe possui os seguintes métodos:

- `adicionarCliente(String nome, String cpf)`: Método para adicionar um novo cliente ao sistema. Recebe como parâmetros o nome e o CPF do cliente e utiliza um `HashMap` para armazenar os dados.

- `buscarClientePorCPF(String cpf)`: Método para buscar um cliente pelo CPF no sistema. Retorna um objeto `Cliente` com o nome e CPF do cliente encontrado.

### Página `index.jsp`

- Na página `index.jsp`, há dois formulários:
  1. **Adicionar Novo Cliente**:
     - Campos para inserir o nome e CPF do cliente.
     - Ao submeter o formulário, o método `adicionarCliente` da classe `ProcessadorDados` é chamado para adicionar o cliente ao `HashMap`.

  2. **Procurar Cliente por CPF**:
     - Campo para inserir o CPF do cliente a ser procurado.
     - Ao submeter o formulário, o método `buscarClientePorCPF` da classe `ProcessadorDados` é chamado para encontrar o cliente no `HashMap`.

- O resultado da busca por CPF é exibido na página.

## Como Executar

Para executar este projeto localmente, siga os passos abaixo:

1. Clone o repositório em sua máquina local:
   
   git clone https://github.com/dirceuvaz/SistemaSuperMercadoCaixa.git

   Abra o projeto na IDE Eclipse.

2.Certifique-se de ter o Apache Tomcat configurado na IDE.

3.Execute o projeto no servidor Tomcat.

4.Acesse a aplicação em seu navegador web:http://localhost:8081/Primeiro/index.jsp
