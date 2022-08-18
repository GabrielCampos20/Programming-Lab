import 'dart:io';
void main(){
  print("Informe o tamanho da base do triângulo:");
  String? base = stdin.readLineSync();
  print("Informe a altura do triângulo:");
  String? altura = stdin.readLineSync();
  if (base != null && altura != null) {
    int baseC = int.parse(base);
    int alturaC = int.parse(altura);

    int area = baseC * alturaC;

    print("A área do triângulo é igual a $area");
  } else {
    print("Erro. Tente novamente.");
  }
}