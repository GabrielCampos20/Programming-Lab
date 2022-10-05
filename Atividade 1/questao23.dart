import 'dart:io';
void main(List<String> args) {
  
  print("Informe o primeiro número: ");
  int numero1 = int.parse(stdin.readLineSync()!);
  print("Informe o segundo  número: ");
  int numero2 = int.parse(stdin.readLineSync()!);

  if (numero1 > numero2){
    for (numero2; numero2 <= numero1; numero2++){
      print(numero2);
    }
  }else if (numero2 > numero1){
    for(numero1; numero1<=numero2;numero1++){
      print(numero1);
    }
  }
}