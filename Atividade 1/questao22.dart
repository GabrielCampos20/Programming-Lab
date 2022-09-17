import 'dart:io';
void main(List<String> args) {
  
  bool controle = false;

  while(controle == false){
    
    print("Informe a nota do aluno:");
    double nota = double.parse(stdin.readLineSync()!);

    if(nota >= 0 && nota <= 10){
      print("Acertou!");
      controle = true;
    }else{
      print("Errou!");
      continue;
    }
  }
}