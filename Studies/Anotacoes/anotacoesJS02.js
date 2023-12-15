// ARRAYS

var segredos = [5, 7, 10, 2, 3]; //array numeração
var input = document.querySelector("input");
input.focus();

function verifica() {
    var achou = false;

    for (var posicao = 0; posicao < segredos.length; posicao++) { //length capta qual a ultima posiçao do array
        if (input.value == segredos[posicao]) {
            alert("Você ACERTOU!");
            achou = true;
            break;
        }
    }
    if (achou == false) { //condição false caso n for nenhum numero do array
        alert("Você ERROU!");
    }
    input.value = "";
    input.focus();
}
var button = document.querySelector("button");
button.onclick = verifica;




// Essa função sorteia um número de 0 a 10

function sorteia() {
    return Math.round(Math.random() * 10);
}

// Essa função pega uma quantidade específica de números diferentes
function sorteiaNumeros(quantidade) {
    var segredos = []; // Cria uma lista vazia para armazenar os números especiais
    var numero = 1;

    // Enquanto não atingir a quantidade desejada de números especiais
    while (numero <= quantidade) {
        var numeroAleatorio = sorteia(); // Sorteia um número

        var achou = false;

        // Verifica se o número já foi sorteado antes
        if (numeroAleatorio !== 0) { // Se for diferente de zero
            for (var posicao = 0; posicao < segredos.length; posicao++) {
                // Se encontrar o número na lista de números especiais, marca como achado
                if (segredos[posicao] == numeroAleatorio) {
                    achou = true;
                    break; // Sai do loop
                }
            }

            // Se o número ainda não foi sorteado, adiciona à lista de números especiais
            if (achou == false) {
                segredos.push(numeroAleatorio); // Adiciona o número à lista de especiais
                numero++; // Incrementa a contagem dos números especiais obtidos
            }
        }
    }

    return segredos; // Retorna a lista de números especiais
}

// Chama a função sorteiaNumeros para pegar 3 números especiais
var segredos = sorteiaNumeros(3);

console.log(segredos); // Mostra os números especiais no console

var input = document.querySelector("input");
input.focus();

// Função que verifica se o número inserido é um dos números especiais
function verifica() {
    var achou = false;

    // Verifica se o número inserido é igual a algum dos números especiais
    for (var posicao = 0; posicao < segredos.length; posicao++) {
        if (input.value == segredos[posicao]) {
            alert("Você ACERTOU!"); // Se encontrou um número especial, exibe "Você ACERTOU!"
            achou = true;
            break; // Sai do loop
        }
    }

    // Se o número inserido não é um dos números especiais, exibe "Você ERROU!"
    if (achou == false) {
        alert("Você ERROU!");
    }

    input.value = ""; // Limpa o campo de entrada
    input.focus(); // Coloca o foco de volta no campo de entrada
}

var button = document.querySelector("button");
button.onclick = verifica;




//SALADA DE FRUTAS

// Declaração de um array vazio para armazenar os ingredientes
var ingredientes = [];

// Solicita ao usuário a quantidade de ingredientes que deseja adicionar e converte para um número inteiro
var quantidade = parseInt(prompt("Quantos ingredientes você vai adicionar?"));

// Inicialização do contador para controlar a quantidade de ingredientes inseridos
var contador = 1;

// Loop enquanto o contador for menor ou igual à quantidade inserida pelo usuário
while (contador <= quantidade) {
    // Pede ao usuário para inserir o ingrediente atual
    var ingrediente = prompt("Informe o ingrediente " + contador);

    // Variável para verificar se o ingrediente já existe na lista
    var existe = false;

    // Loop para verificar se o ingrediente já foi adicionado à lista de ingredientes
    for (var posicao = 0; posicao < ingredientes.length; posicao++) {
        // Verifica se o ingrediente atual já está na lista
        if (ingredientes[posicao] == ingrediente) {
            // Se o ingrediente já existir na lista, marca que ele existe e interrompe o loop
            existe = true;
            break;
        }
    }

    // Se o ingrediente ainda não existir na lista, adiciona-o
    if (existe == false) {
        ingredientes.push(ingrediente); // Adiciona o ingrediente ao final do array
        contador++; // Incrementa o contador para o próximo ingrediente
    }
}

// Exibe no console do navegador a lista final de ingredientes sem duplicatas
console.log(ingredientes);
