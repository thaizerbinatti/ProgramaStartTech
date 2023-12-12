// Anotações rápidas de Java Script


// Programa para informar o IMC recendo informações do usuário
var nome = prompt("Informe o seu nome");
//Função prompt recebe o parametro e da o retorno
var alturaInformada = prompt(nome + ", informe sua altura");
var pesoInformado = prompt(nome + ", informe seu peso");

var imc = calculaImc(alturaInformada, pesoInformado);
document.write(nome + ", o seu IMC é " + imc);



//Condição aplicada em IMC
if (imc < 18.5) {
    mostra("Você está abaixo do recomendado");
}
if (imc > 35) {
    mostra("Você está acima do recomendado");
}
if (imc >= 18.5 && imc <= 35) {
    mostra("Seu IMC está excelente!");
}



// Função para transformar a string em número
var vitorias = parseInt(prompt("Entre com o número de vitórias."));
// O parseInt recebe uma string e converte ela em número
var empates = parseInt(prompt("Entre com o número de empates."));
var pontos = vitorias * 3 + empates;
mostra("Os pontos do seu time são " + pontos);



// Jogo acertar número
var numeroPensado = Math.round(Math.random() * 10);
// math.round = arredonda o número e math.random sorteia um numero aleátorio
// vezes 10, pula uma casa decimal e sorteia numeros de 1 a 10
console.log(numeroPensado); // mostra o numero escolhido pelo programa



// Exemplo if e else senha
var senha = prompt("Entre com sua senha");
if (senha == "calopsitaazul") {
    alert("Acesso liberado!");
} else {
    alert("Acesso negado!");
}



// Exemplo While (Repetição)
var limite = parseInt(prompt("Entre com a data limite")); // usiário define um ano fim
var anoCopa = 1930; //inicio do laço while

while (anoCopa <= limite) { //laço de repetição anos da copa
    mostra("Teve copa em " + anoCopa); //mostra na pag
    anoCopa = anoCopa + 4; //calculo de 4 em 4 anos
}
mostra("FIM"); //exibe no fim do laço



//De While para FOR
var multiplicador = 1; //Exemplo while na taboada do 7
while (multiplicador <= 10) {
    mostra(7 * multiplicador);
    multiplicador = multiplicador + 1;
}
//Taboada do 7 usando o FOR
for (var multiplicador = 1; multiplicador <= 10; multiplicador++) { //o ++ é simplificação de: multiplicador = multiplicador + 1
    mostra(7 * multiplicador);
}
mostra("FIM");



//Acumulando valores
var totalFamiliares = parseInt(prompt("Quantidade de familiares?"));

var numero = 1; //while se iniciar no 1
var totalIdades = 0; //inicio do total das idades acumuladas
//é importante esse var ficar fora do while, se não ele vai zerar sempre que receber outro numero

while (numero <= totalFamiliares) {
    var idade = parseInt(prompt("Informe idade do familiar")); //recebendo a idade dos familiares
    totalIdades = totalIdades + idade;
    numero++;
}
var mediaDasIdades = totalIdades / totalFamiliares //calculo media das idades
mostra("A média das idades dos familiares é " + mediaDasIdades);
mostra("FIM");



//Interrompendo repetição
var numeroPensado = Math.round(Math.random() * 10); //programa de acertar o numero
var tentativas = 1;
while (tentativas <= 3) { //tres tentativas para acertar
    var chute = parseInt(prompt("Digite seu chute!"));

    if (chute == numeroPensado) {
        mostra("Você ACERTOU, o número pensado era " + numeroPensado);
        break; //interrompe o jogo se o usuário acertar antes das 3 tentativas

    } else {
        mostra("Você ERROU!");
    }
    tentativas++;
}
mostra("FIM");



// Repetições aninhadas
for (var linha = 1; linha <= 3; linha++) { //cria 3 linhas
    for (var coluna = 1; coluna <= 10; coluna++) {//cria a coluna
        document.write("*");//conteudo da da linha
    }
    pulaLinha();//pula a linha
}

//parseInt() = string p/ numero | parseFloat() mantem as casas decimais, ex: parseFlot(12.13)



//HTML e JS
//<input/>
//<button>Compare com o meu segredo</button>
var segredo = Math.round(Math.random() * 10); //gera um número aleátorio
    var input = document.querySelector("input"); //busca o input no html
        input.focus(); //foca na caixa para inserir o número

    function verifica() {
        if(input.value == segredo) { //condição para validar o jogo
        alert("Você ACERTOU!");
        } else {
        alert("Você ERROU!!!!!!!!");
        }
                input.value = ""; //limpa a caixa
                input.focus();
    }
    var button = document.querySelector("button");
    button.onclick = verifica; //chama a função para o onclick (importante não usar as aspas, ex: verifica())



