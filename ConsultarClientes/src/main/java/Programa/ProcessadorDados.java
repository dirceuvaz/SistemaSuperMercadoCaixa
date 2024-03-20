package Programa;

import java.util.HashMap;

public class ProcessadorDados {
    private HashMap<String, Cliente> clientes;

    public ProcessadorDados() {
        this.clientes = new HashMap<>();
    }

    public void adicionarCliente(String nome, String cpf) {
        Cliente cliente = new Cliente(nome, cpf);
        clientes.put(cpf, cliente);
        System.out.println("Cliente adicionado: " + cliente);
    }

    public Cliente buscarClientePorCPF(String cpf) {
        return clientes.get(cpf);
    }
}
