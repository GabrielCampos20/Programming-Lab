import 'dart:io';

void main() {
  print("Informe o tamanho da base maior do trapézio:");
  String? baseMa = stdin.readLineSync();
  print("Informe o tamanho da base menor do trapézio:");
  String? baseMe = stdin.readLineSync();
  print("Informe a altura do trapézio:");
  String? altura = stdin.readLineSync();
  if (baseMa != null && altura != null && baseMe != null) {
    int basemaC = int.parse(baseMa);
    int basemeC = int.parse(baseMe);
    int alturaC = int.parse(altura);

    int part1 = (basemaC + basemeC) * alturaC;
    double resultado = part1 / 2;

    print("A área do trapézio é igual a $resultado");
  } else {
    print("Erro. Tente novamente.");
  }
}
