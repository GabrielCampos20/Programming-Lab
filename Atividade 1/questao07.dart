import 'dart:io';

void main() {
  print("Qual o nome do aluno?");
  String? nome = stdin.readLineSync();
  print("Qual foi a 1° nota do aluno?");
  String? nota1 = stdin.readLineSync();
  print("Qual foi a 2° nota do aluno?");
  String? nota2 = stdin.readLineSync();
  print("Qual foi a 3° nota do aluno?");
  String? nota3 = stdin.readLineSync();

  if (nota1 != null && nota2 != null && nota3 != null) {
    double nota1C = double.parse(nota1);
    double nota2C = double.parse(nota2);
    double nota3C = double.parse(nota3);

    double total = nota1C + nota2C + nota3C;

    double media = total / 3;

    if (media < 3) {
      print("DISCENTE REPROVADO");
    } else if (media >= 3 && media < 6) {
      print("DISCENTE DE RECUPERAÇÃO");
    } else if (media >= 6) {
      print("DISCENTE APROVADO");
    }
    print(nome);
  }
}
