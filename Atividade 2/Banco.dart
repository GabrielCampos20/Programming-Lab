import 'dart:io';
class Banco{
  
    late String nome;
    late int idade;
    late double saldo = 0;

    void criarConta(){
      print("Qual o seu nome?");
      String nome = stdin.readLineSync()!;
      print("Qual a sua idade?");
      int idade = int.parse(stdin.readLineSync()!);

      if(idade >= 18){
        print("Conta criada com sucesso! Seja bem vindo(a) $nome");
      }else{
        print("Erro, é necessário ser maior de idade para ter acesso a uma conta!");
      }
    }

    void excluirConta(){

    }

    void consultarSaldo(){
      print("Seu saldo atual é de $saldo reais.");
    }

    void depositar(){
      print("Quanto deseja depositar?");
      double valor = double.parse(stdin.readLineSync()!);

      if(valor > 0){
        saldo = saldo+valor;
        print("O valor de $valor real(s) foi depositado em sua conta, seu saldo atual é de $saldo real(s)!");
      }else{
        print("Informe um valor válido.");
      }
    }

    void sacar(){
      print("Seu saldo atual é de $saldo real(s), quanto deseja sacar?");

      double valor = double.parse(stdin.readLineSync()!);
      if(valor <= saldo){
        saldo = saldo-valor;
        print("Saque efeituado com sucesso!");
      }else{
        print("Erro, insira um valor válido.");
      }
    }

}
