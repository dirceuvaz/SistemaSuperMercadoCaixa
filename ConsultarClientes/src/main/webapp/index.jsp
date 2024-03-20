<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Programa.ProcessadorDados, Programa.Cliente" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Consultar Clientes</title>
  <!-- Adicione o Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
  <div class="container mt-5">
    <h1 >Supermercado</h1>
    <br>
    <h4><strong>Consultar Clientes</strong></h4>
  	<br>
    <div class="row">
      <div class="col-md-6">
        <h3>Adicionar Novo Cliente:</h3>
        <form action="index.jsp" method="post">
          <div class="mb-3">
            <label for="nomeNovo" class="form-label">Nome:</label>
            <input type="text" class="form-control" id="nomeNovo" name="nomeNovo" required>
          </div>
          <div class="mb-3">
            <label for="cpfNovo" class="form-label">CPF:</label>
            <input type="text" class="form-control" id="cpfNovo" name="cpfNovo" required>
          </div>
          <button type="submit" class="btn btn-primary">Adicionar Cliente</button>
          
        </form>
      </div>
      
      <div class="col-md-6">
        <h3>Procurar Cliente por CPF:</h3>
        <form action="index.jsp" method="post">
          <div class="mb-3">
            <label for="cpfProcurar" class="form-label">CPF:</label>
            <input type="text" class="form-control" id="cpfProcurar" name="cpfProcurar" required>
          </div>
          <button type="submit" class="btn btn-primary">Procurar Cliente</button>
          
        </form>
      </div>
    </div>
  
    <hr>
  
    <%
    //recebendo os valores inputados
    String nomeNovo = request.getParameter("nomeNovo");
    String cpfNovo = request.getParameter("cpfNovo");
    String cpfProcurar = request.getParameter("cpfProcurar");

    ProcessadorDados processador = (ProcessadorDados) application.getAttribute("processador");
    if (processador == null) {
        processador = new ProcessadorDados();
        application.setAttribute("processador", processador);
    }

    if (nomeNovo != null && cpfNovo != null) {
        // Adicionando novo cliente
        processador.adicionarCliente(nomeNovo, cpfNovo);
    }
    
    if (cpfProcurar != null) {
        // Procurar cliente pelo CPF
        Cliente clienteEncontrado = processador.buscarClientePorCPF(cpfProcurar);
    %>
    
    <div class="row mt-4">
  <div class="col-md-6">
    <h3>Resultado da Busca por CPF:</h3>
    <% if (clienteEncontrado != null) { %>
      <table class="table table-bordered">
        <thead>
          <tr>
            <th scope="col">Nome</th>
            <th scope="col">CPF</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><%= clienteEncontrado.getNome() %></td>
            <td><%= clienteEncontrado.getCpf() %></td>
          </tr>
        </tbody>
      </table>
    <% } else { %>
      <p>Cliente não encontrado para o CPF informado.</p>
    <% } %>
    
  </div>
</div>

    <%
    }
    %>
    <!-- Adicionando mensagem de sucesso ao adicionar cliente -->
    <% if (nomeNovo != null && cpfNovo != null) { %>
      <div class="alert alert-success" role="alert">
        Cliente <strong><%= nomeNovo %></strong> Adicionado com sucesso! CPF: <strong><%= cpfNovo %></strong>
      </div>
    <% } %>
    
  </div>

  <!-- Adicione o Bootstrap JavaScript (opcional, apenas para alguns componentes) -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
