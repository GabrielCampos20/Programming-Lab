import 'dart:io';

void main() {
  print("Qual o nome do professor?");
  String? nome = stdin.readLineSync();
  print("Qual o nível do professor?");
  String? nivel = stdin.readLineSync();
  print("Quantas horas de aula este professor tem?");
  String? horas = stdin.readLineSync();
  if (nome != null && nivel != null && horas != null) {
    int nivelC = int.parse(nivel);
    double horasC = double.parse(horas);
    if (nivelC == 1) {
      double salario = 12 * horasC;
      print("O professor $nome é nível 1, e recebe $salario reais mensais.");
    } else if (nivelC == 2) {
      double salario = 17 * horasC;
      print("O professor $nome é nível 2, e recebe $salario reais mensais.");
    } else {
      print("Erro.");
    }
  }
}
