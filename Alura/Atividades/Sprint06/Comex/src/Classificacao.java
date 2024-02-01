public class Classificacao {
    public static void main(String[] args) {

        // Atividade 7

        int anoAtual = 2023;
        int nascimentoCliente1 = 1980;
        int nascimentoCliente2 = 2000;
        int idadeCliente1 = anoAtual - nascimentoCliente1;
        int idadeCliente2 = anoAtual - nascimentoCliente2;

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

        System.out.println(">>> Listagem do Cliente");
        System.out.println(">>> Ano Atual: " + anoAtual);
        System.out.println("_______________________________________");
        System.out.println("Nome: Fulano");
        System.out.println("Data de nascimento: " + nascimentoCliente1);
        System.out.println("Idade: " + idadeCliente1);
        System.out.println("Caracteristica Etária: " + classificacao1);
        System.out.println("_______________________________________");
        System.out.println("Nome: Beltrano");
        System.out.println("Data de nascimento: " + nascimentoCliente2);
        System.out.println("Idade: " + idadeCliente2);
        System.out.println("Caracteristica Etária: " + classificacao2);
    }
}
