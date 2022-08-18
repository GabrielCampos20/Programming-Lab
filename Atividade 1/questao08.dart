import 'dart:io';

void main() {
  print("Informe um número:");
  String? n1 = stdin.readLineSync();
  print("Informe outro número:");
  String? n2 = stdin.readLineSync();

  if (n1 != null && n2 != null) {
    int n1C = int.parse(n1);
    int n2C = int.parse(n2);

    if (n1C != n2C) {
      print("Os número são diferentes!");
    } else {
      print("Os números são iguais!");
    }
  }
}
