import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        Scanner leitura = new Scanner(System.in);

        //Atividade 1

        System.out.println("Seja bem vindo ao COMEX!");
        System.out.println("_______________________________________");

        // Atividade 4

        String titulo = ">>> Listagem dos clientes";
        String pessoa1 = "Fulano";
        int dataNascimento = 1980;
        String pessoa2 = "Sicrano";
        int dataNascimento2 = 2000;

        System.out.println(titulo);
        System.out.println("_______________________________________");
        System.out.println("Nome: " + pessoa1);
        System.out.println("Data de nascimento: " + dataNascimento);
        System.out.println("_______________________________________");
        System.out.println("Nome: " + pessoa2);
        System.out.println("Data de nascimento: " + dataNascimento2);
        System.out.println("_______________________________________");

        // Atividade 5

        double valorLivro = 49.95;
        double valorCelular = 1470.76;
        System.out.println("Cadastre um produto e o valor");
        System.out.println("_______________________________________");
        System.out.println("Nome: Livro");
        System.out.println("Preço: R$" + valorLivro);
        System.out.println("_______________________________________");
        System.out.println("Nome: Celular");
        System.out.println("Preço: R$" + valorCelular);
        System.out.println("_______________________________________");


        // Atividade 7
        int anoAtual = 2023;
        int nascimentoCliente1 = 1980;
        int nascimentoCliente2 = 2000;
        int idadeCliente1 = anoAtual - nascimentoCliente1;
        int idadeCliente2 = anoAtual - nascimentoCliente2;


        // System.out.println(">>> Listagem do Cliente");
        // System.out.println(">>> Ano Atual: " + anoAtual);
        // System.out.println("_______________________________________");
        // System.out.println("Nome: Fulano");
        // System.out.println("Data de nascimento: " + nascimentoCliente1);
        // System.out.println("Idade: " + idadeCliente1);
        // System.out.println("Caracteristica Etária: " + classificacao1);
        // System.out.println("_______________________________________");
        // System.out.println("Nome: Beltrano");
        // System.out.println("Data de nascimento: " + nascimentoCliente2);
        // System.out.println("Idade: " + idadeCliente2);
        // System.out.println("Caracteristica Etária: " + classificacao2);

        String classificacao1;
        if (idadeCliente1 <= 17) {
            classificacao1 = "ADOLESCENTE";
        } else if (idadeCliente1 <= 29) {
            classificacao1 = "JOVEM";
        } else if (idadeCliente1 <= 59) {
            classificacao1 = "ADULTO";
        } else {
            classificacao1 = "IDOSO";
        }

        String classificacao2;
        if (idadeCliente2 <= 17) {
            classificacao2 = "ADOLESCENTE";
        } else if (idadeCliente2 <= 29) {
            classificacao2 = "JOVEM";
        } else if (idadeCliente2 <= 59) {
            classificacao2 = "ADULTO";
        } else {
            classificacao2 = "IDOSO";
        }


       // Atividade 5 com while
        int sair = 1;
        while (sair != 0) {
            System.out.println("Atividade 5 feita com while durante a aula");
            System.out.println("Cadastre um produto e o valor");
            String produto = leitura.next();
            double valor = leitura.nextDouble();

            System.out.println(">>> Listagem dos Produtos");
            System.out.println("_______________________________");
            System.out.println("Nome: " + produto);
            System.out.println("Preço: R$" + valor);
            System.out.println("Digite 0 pra sair ou 1 para continuar cadastrando.");
            sair = leitura.nextInt();
        }
    }
}





