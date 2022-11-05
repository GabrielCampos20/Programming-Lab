import 'Cliente.dart';
import 'dart:io';
void main(List<String> args) {
 Cliente c = Cliente();

  bool x = true;
  do {
    print("============SISTEMA BANCÁRIO=============");
    print("1 - CRIAR CONTA");
    print("2 - EXCLUIR CONTA");
    print("3 - CONSULTAR SALDO");
    print("4 - DEPOSITAR");
    print("5 - SACAR");
    print("=========================================");
    print("Que operação deseja realizar?");
    int opc = int.parse(stdin.readLineSync()!);

    if(opc == 1){
      c.criarConta();
      continue;
    }else if(opc == 2){
      c.excluirConta();
      continue;
    }else if(opc == 3){
      c.consultarSaldo();
      continue;
    }else if(opc == 4){ 
      c.depositar();
      continue;
    }else if(opc == 5){
      c.sacar();
      continue;
    }else{
      print("Erro, finalizando sistema.");
      x = false;
      break;
    }   
  } while (x == true);
  
}