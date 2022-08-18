import 'dart:io';

void main(){
  int anos = 0;
  print("Qual o seu nome?");
  String? nome = stdin.readLineSync();
  print("Qual a sua idade?");
  String? idade = stdin.readLineSync();
  if (idade != null ){
    int idadeC = int.parse(idade);
    print("Certo, você se chama $nome e tem $idadeC anos!");
    if(idadeC < 18){
      print("O que você acha de se tornar maior de idade?");
      while(idadeC < 18){
        print("Um ano se passou....");
        idadeC++;
        anos++;
      }
      print("Agora você é maior de idade!");
      print("E você avançou $anos ano(s) no tempo.");
    }else if(idadeC > 18){
      print("O que acha de voltar no tempo...");
      while(idadeC > 18){
        print("Você está um ano mais jovem!");
        idadeC--;
        anos++;
      }
      print("Agora você tem 18 anos de novo!");
      print("E você voltou $anos ano(s) no tempo.");
    }else if(idadeC == 18){
      print("Você tem 18 anos, então não tem nada divertido pra você!");
    }
  }else{
    print("Deu erro aqui!");
  }
}