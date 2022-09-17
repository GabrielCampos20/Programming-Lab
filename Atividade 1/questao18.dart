import 'dart:io';
void main(List<String> args) {
  
  bool x = true;

  do {
    print("=======MENU=======\n1 - OPÇÃO 1\n2 - OPÇÃO 2");
    int opcao = int.parse(stdin.readLineSync()!);
    
    if(opcao == 1){
      print("Você escolheu a opção 1");
      continue;
    }else if(opcao == 2){
      print("Você escolheu a opcão 2");
      continue;
    }else{
      print("PROGRAMA FINALIZADO");
      x = false;
    }

  } while (x == true);

}