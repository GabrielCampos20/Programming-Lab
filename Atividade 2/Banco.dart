import 'dart:io';
import 'Cliente.dart';

void main(){

  Cliente c = Cliente();
  var clientes = [];

  while(1>0){

    print("1 - Criar Conta");
    print("2 - Excluir Conta");
    print("3 - Consultar Saldo");
    print("4 - Depositar");
    print("5 - Sacar");
    print("6 - Encerrar Atendimento");
    print("7 - Exiba a lista toda menó");

    print("Informe o número da opção desejada: ");
    String? opc = stdin.readLineSync();

    if (opc == "1"){
      c.criarConta();
      clientes.add(c);
    }else if (opc == "2"){
      
    }else if (opc == "3"){
      
    }else if (opc == "4"){
      
    }else if (opc == "5"){
      
    }else if (opc == "6"){
     break; 
    }else if (opc == "7"){
      for (int i = 0; i <= clientes.length; i++){
        print(clientes[i]);
      }
    }
  }

}