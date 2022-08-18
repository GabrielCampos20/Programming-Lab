import 'dart:io';

void main() {
  print("Informe um número: ");
  String? n1 = stdin.readLineSync();
  print("Informe outro número:");
  String? n2 = stdin.readLineSync();

  if (n1 != null && n2 != null) {
    int n1C = int.parse(n1);
    int n2C = int.parse(n2);

    if (n1C > n2C) {
      int diferenca = n1C - n2C;
      print(diferenca);
    } else if (n2C > n1C) {
      int diferenca = n2C - n1C;
      print(diferenca);
    }
  }
}
