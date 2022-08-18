import 'dart:io';

void main() {
  print("Você está com fome?");
  String? fome = stdin.readLineSync();
  print("Você tem dinheiro?");
  String? dinheiro = stdin.readLineSync();

  if (fome != null && dinheiro != null) {
    if (fome == "Sim" && dinheiro == "Sim") {
      print("Dirija-se a uma lanchonete");
    } else if (dinheiro != "Sim") {
      print("É preciso dinheiro para comprar um lanche");
    }
  }
}
