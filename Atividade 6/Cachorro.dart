import 'dart:io';
class Cachorro{

  late String _nome;
  late String _raca;
  late double _peso;
  late double _altura;

  void inserirNome(){
    print("Qual o nome do cachorro?");
    String nome = stdin.readLineSync()!;
    _nome = nome;
    print("Nome alterado com sucesso!!!");
  }

  void inserirRaca(){
    print("Qual a raça do cachorro?");
    String raca = stdin.readLineSync()!;
    _raca = raca;
    print("Raça alterada com sucesso!!!");
  }

  void inserirPeso(){
    print("Qual o peso do cachorro?");
    double peso = double.parse(stdin.readLineSync()!);
    if(peso>0){
      _peso = peso;
      print("Peso alterado com sucesso!!!");
    }else{
      print("Erro, insira um peso válido!!!");
    }
  }

  void inserirAltura(){
    print("Qual o peso do cachorro?");
    double altura = double.parse(stdin.readLineSync()!);
    if(altura > 0){
      _altura = altura;
      print("Altura alterada com sucesso!!!");
    }else{
      print("Erro, insira uma altura válida!!!");
    }
  }
}