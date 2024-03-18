package Programa;

import java.util.HashMap;
import java.util.Scanner;

public class CadastroCliente {
    private static HashMap<String, Cliente> clientes = new HashMap<>();

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int opcao;
        do {
            System.out.println("1 - Novo Cliente" );
            System.out.println("2 - Procurar Cliente por CPF");
            System.out.println("3 - Sair");
            System.out.println("Escolha uma opção:");
            opcao = scanner.nextInt();
            scanner.nextLine(); 

            switch (opcao) {
                case 1:
                    novoCliente(scanner);
                    break;
                case 2:
                    procurarClientePorCPF(scanner);
                    break;
                case 3:
                    System.out.println("Saindo... \n");
                    break;
                default:
                    System.out.println("Opção inválida! \n");
            }
        } while (opcao != 3);
        
        scanner.close();
    }

    private static void novoCliente(Scanner scanner) {
        System.out.print("Nome: ");
        String nome = scanner.nextLine();
        System.out.print("CPF: \n");
        String cpf = scanner.nextLine();

        Cliente cliente = new Cliente(nome, cpf);
        clientes.put(cpf, cliente);
        System.out.println("Cliente cadastrado com sucesso!");
        System.out.println("");
    }

    private static void procurarClientePorCPF(Scanner scanner) {
        System.out.print("Digite o CPF do cliente: ");
        String cpf = scanner.nextLine();
        System.out.println("");

        Cliente cliente = clientes.get(cpf);
        if (cliente != null) {
            System.out.println("Nome: " + cliente.getNome());
            System.out.println("CPF: " + cliente.getCpf());
            System.out.println("");
        } else {
            System.out.println("Cliente não encontrado. \n");
            System.out.println("");
        }
    }
}
