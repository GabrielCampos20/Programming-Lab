void main(){

  var lista = [];

  lista.add(9.5);
  lista.add(3.2);
  lista.add(7.5);
  lista.add(4.1);
  lista.add(8.3);

  double soma = 0;

  for (int i = 0; i < lista.length; i++){
    print('${lista[i]}');
  }

  var maiorValor = lista[0];
  var menorValor = lista[0];

  for (int i = 0; i < lista.length; i++){

    if (lista[i] > maiorValor){
      maiorValor = lista[i];
    }

    if (lista[i] < menorValor ){
      menorValor = lista[i];
    }

  }

  print("O maior valor é $maiorValor!");
  print("O menor valor é $menorValor");  

  for (double n in lista){
    
    soma += n;

  }

  var divisao = soma/lista.length;

  print("A média dos valores é igual a $divisao!");

}