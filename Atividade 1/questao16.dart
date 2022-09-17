import 'dart:io';
void main(List<String> args) {
  
  var valores = [];

  print("Quantos valores deseja deseja digitar?");
  int quantidade = int.parse(stdin.readLineSync()!);

  for (int i=0; i<quantidade;i++){
    print("Informe o valor:");
    int valor = int.parse(stdin.readLineSync()!);

    if(valor > 0){
      valores.add(valor);
    }else{
      print("Erro, tente novamente. Use apenas valores inteiros positivos!");
      i--;
    }
  }

  print(valores.reversed);
}