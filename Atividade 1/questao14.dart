import 'dart:io';
void main(List<String> args) {

  var notasMenores = [];
  var notas = [];
  double media;
  double soma = 0;
  
  print("Quantas notas deseja adicionar?");
  int quantidadeNotas = int.parse(stdin.readLineSync()!);

  for (int i = 0; i<quantidadeNotas;i++){
    print("Informe a nota do aluno:");
    double nota = double.parse(stdin.readLineSync()!);
    if (nota >= 0 && nota < 11){
      notas.add(nota);
    }else{
      print("Erro, tente novamente!");
      i--;
    }
  }

  for(int i = 0; i<notas.length;i++){
    soma = soma+notas[i];
  }

  media = soma/notas.length;
  print("A média do aluno é $media");

  for(int i = 0;i<notas.length;i++){
    if (notas[i]>media){
      print(notas[i]);
    }else{
      notasMenores.add(notas[i]);
    }
  }

  print(notasMenores);

}