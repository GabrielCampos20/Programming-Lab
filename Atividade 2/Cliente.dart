import 'dart:io';
class Cliente{

  var nomes = [];
  var idades = [];
  var saldos = [];
  var cpfs = [];

  late String nome;
  late int idade;
  late double saldo = 0;
  late int cpf;

  void criarConta(){
    print("Qual o seu nome?");
    String nome = stdin.readLineSync()!;
    print("Qual a sua idade?");
    int idade = int.parse(stdin.readLineSync()!);
    print("Qual o seu CPF?");
    int cpf = int.parse(stdin.readLineSync()!);

    if(idade >= 18){
      print("Conta criada com sucesso!Seja bem vindo $nome!");
      nomes.add(nome);
      idades.add(idade);
      saldos.add(0);
      cpfs.add(cpf);
    }else{
      print("Apenas pessoas maiores de idade podem ser nossos clientes.");
    } 
  }

  void excluirConta(){
    print("Qual o seu cpf?");
    int cpf = int.parse(stdin.readLineSync()!);

    for(int i = 0;i<cpfs.length;i++){
      if(cpfs[i] == cpf){
        nomes.remove(nomes[i]);
        idades.remove(idades[i]);
        saldos.remove(saldos[i]);
        cpfs.remove(cpfs[i]);
        print("Conta removida com sucesso!");
      }else{
        print("Cpf não encontrado.");
      }
    }
  }

  void consultarSaldo(){
    print("Qual o seu cpf?");
    int cpf = int.parse(stdin.readLineSync()!);
    for(int i = 0;i<cpfs.length;i++){
      if(cpfs[i] == cpf){
        print(" Nome: ${nomes[i]}");
        print("Idade: ${idades[i]}");
        print("Saldo: ${saldos[i]}");
        print("  Cpf: ${cpfs[i]}");
      }else{
        print("Cpf não encontrado.");
      }
    }
  }
  
  void depositar(){
    print("Qual o seu cpf?");
    int cpf = int.parse(stdin.readLineSync()!);
    for(int i = 0; i<cpfs.length;i++){
      if(cpfs[i] == cpf){
        print("Que valor deseja depositar?");
        double valor = double.parse(stdin.readLineSync()!);
        if(valor>0){
          saldos[i] = saldos[i]+valor;
          print("Valor adicionado com sucesso!");
          print("Novo saldo: ${saldos[i]}");
        }else{
          print("Valor inválido, informe um valor maior que 0.");
        }
      }else{
        print("Cpf não encontrado.");
      }
    }
  }

  void sacar(){
    print("Qual o seu cpf?");
    int cpf = int.parse(stdin.readLineSync()!);
    for(int i = 0; i<cpfs.length;i++){
      if(cpfs[i] == cpf){
        print("Que valor deseja sacar?");
        double valor = double.parse(stdin.readLineSync()!);
        if(valor <= saldos[i]){
          saldos[i] = saldos[i] - valor;
          print("Saque efeituado com sucesso!");
          print("Saldo atual: ${saldos[i]}");
        }else{
          print("Informe um valor válido.");
        }
      }else{
        print("Cpf não encontrado.");
      }
    }
  }
}