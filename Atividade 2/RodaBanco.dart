import 'Banco.dart';
import 'dart:io';
void main(List<String> args) {
  
  Banco b = Banco();
  bool x = true;

  do{
    print("=======SISTEMA BANCÁRIO=======\n1 - CRIAR CONTA\n2 - EXCLUIR CONTA\n3 - CONSULTAR SALDO\n4 - DEPOSITAR\n5 - SACAR\n6 - FINALIZAR");    
    String opcao = stdin.readLineSync()!;
    if(opcao == "1"){
      b.criarConta();
    }else if(opcao == "2"){
      b.excluirConta();
      continue;
    }else if(opcao == "3"){
      b.consultarSaldo();
      continue;
    }else if(opcao == "4"){
      b.depositar();
      continue;
    }else if(opcao == "5"){
      b.sacar();
      continue;
    }else if(opcao == "6"){
      print("Finalizando o sistema.");
      x = false;
    }else{
      print("Opção inválida.");
      continue;
    }
  }while(x == true);
}