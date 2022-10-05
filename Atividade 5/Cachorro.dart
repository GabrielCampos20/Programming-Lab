import 'dart:io';
class Cachorro{

  late String _nome;
  late int _idade;
  late String _cor;

  Cachorro(){
    print("Qual o nome do cachorro?");
    String nome = stdin.readLineSync()!;
    print("Qual a idade do cachorro?");
    int idade = int.parse(stdin.readLineSync()!);
    print("Qual a cor do cachorro?");
    String cor = stdin.readLineSync()!;

    _nome = nome;
    _idade = idade;
    _cor = cor;

    print("Cachorro aceitado no sistema.");
  }

  void latir(){
    print("auau");
  }

  String getNome(){
    return _nome;
  }

  int getIdade(){
    return _idade;
  }

  String getCor(){
    return _cor;
  }

  void setNome(String novoNome){
    _nome = novoNome;
  }

  void setIdade(int novaIdade){
    _idade = novaIdade;
  }

  void setCor(String novaCor){
    _cor = novaCor;
  }

  

}