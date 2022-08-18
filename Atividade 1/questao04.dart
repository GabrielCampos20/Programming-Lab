import 'dart:io';

void main() {
  print("Informe o tamanho da base do retângulo:");
  String? base = stdin.readLineSync();
  print("Informe a altura do retângulo:");
  String? altura = stdin.readLineSync();
  if (base != null && altura != null) {
    int baseC = int.parse(base);
    int alturaC = int.parse(altura);

    int area = baseC * alturaC;

    print("A área do retângulo é igual a $area");
  } else {
    print("Erro. Tente novamente.");
  }
}
