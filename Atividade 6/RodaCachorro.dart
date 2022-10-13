import 'dart:io';

import 'Cachorro.dart';
void main(List<String> args) {
  
  bool x = true;

  Cachorro c = Cachorro();
  
  

  do{
    print("=============MENU=============\n1 - Criar Cachorro\n2 - Inserir nome do cachorro\n3 - Inserir raça do cachorro\n4 - Inserir peso do cachorro\n5 - Inserir altura do cachorro\n==============================");
    String? opc = stdin.readLineSync();

    if(opc == "1"){
      Cachorro c = Cachorro();
      print("Cachorro criado com sucesso!");
      continue;
    }else if(opc == "2"){
      c.inserirNome();
      continue;
    }else if(opc == "3"){
      c.inserirRaca();
      continue;
    }else if(opc == "4"){
      c.inserirPeso();
      continue;
    }else if(opc == "5"){
      c.inserirAltura();
      continue;
    }else{
      print("Erro, tente novamente!!!");
      x = false;
    }
  }while(x == true);
}