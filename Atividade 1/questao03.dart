import 'dart:io';

void main() {
  print("Informe um número;");
  String? num = stdin.readLineSync();
  if (num != null) {
    int numC = int.parse(num);
    if (numC % 2 == 0) {
      print("O número $numC é par!");
    } else if (numC % 2 != 0) {
      print("O número $numC é ímpar!");
    } else {
      print("O número é 0.");
    }
  }
}
