import 'dart:io';
class Pessoa{

  late String nome;
  late int idade;

  Pessoa(){
    print("Qual o nome da pessoa?");
    String nome = stdin.readLineSync()!;
    this.nome = nome;
    print("Qual a idade da pessoa?");
    int idade = int.parse(stdin.readLineSync()!);
    this.idade = idade;
  }
}

List<Pessoa> pessoas = [];

Pessoa adicionarPessoa(){
  pessoas.add(Pessoa());
  return Pessoa();
}
void main(List<String> args) {
  

  for(int i=0; i<2;i++){
    adicionarPessoa();
    print(i);
  }

  print(pessoas);

}