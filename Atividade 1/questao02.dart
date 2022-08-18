import 'dart:io';

void main() {
  print("Informe um número;");
  String? num = stdin.readLineSync();
  if (num != null) {
    int numC = int.parse(num);
    if (numC < 0) {
      print("O número $numC é negativo!");
    } else if (numC > 0) {
      print("O número $numC é positivo!");
    } else {
      print("O número é 0.");
    }
  }
}
