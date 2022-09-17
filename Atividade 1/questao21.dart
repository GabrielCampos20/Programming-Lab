import 'dart:io';
void main(List<String> args) {
  
  var pessoas = [];

  for (int i = 0; i < 10; i++){
    print("Informe a idade da pessoa:");
    int idade = int.parse(stdin.readLineSync()!);

    if (idade>0){
      print("Idade adicionada.");
      pessoas.add(idade);
    }else{
      print("Erro, tente novamente.");
    }
  }

  int maioresDeIdade = 0;

  for(int i = 0; i<pessoas.length; i++){
    if(pessoas[i] >= 18){
      maioresDeIdade++;
    }else{
      continue;
    }
  }

  print("Existem $maioresDeIdade pessoas maiores de idade!");
  
}