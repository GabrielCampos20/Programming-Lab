import 'dart:io';

var clientes = [];

void criarConta(){
  print("Qual o seu nome?");
  String? nome = stdin.readLineSync();
  print("Qual a sua idade?");
  String? idade = stdin.readLineSync();

  if (nome != null && idade != null){
    int idadeC = int.parse(idade);
    if (idadeC >= 18){
      print("Conta criada com sucesso!Seja bem vindo $nome");
      clientes.add(nome);
    }else if (idadeC < 18){
      print("Apenas pessoas maiores de idade podem criar contas.");
    }else{
      print("Erro, tente novamente!");
    }
  }else{
    print("Erro, tente novamente!");
  }
  
}




void main(){
while (1>0){
    print("1 - Criar conta");
    print("2 - Excluir conta");
    print("3 - Consultar saldo");
    print("4 - Depositar");
    print("5 - Sacar");
    print("6 - Sair");

    String? opc = stdin.readLineSync();
    if (opc == '1'){
      criarConta();
    }else if(opc == '2'){

    }else if(opc == '3'){
      
    }else if(opc == '4'){
      
    }else if(opc == '5'){
      
    }else if(opc == '6'){
      break;
    }else{
      print("Erro, tente novamente.");
    }
  }
}
