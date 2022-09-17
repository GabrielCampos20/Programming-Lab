import 'dart:io';
import 'dart:math';



void trapezio(){
  print("Informe o valor da Base Maior: ");
  String? baseMaior = stdin.readLineSync();
  print("Qual o valor da Base menor?");
  String? baseMenor = stdin.readLineSync();
  print("Qual a altura do trapézio?");
  String? altura = stdin.readLineSync();

  if (baseMaior != null && baseMenor != null && altura != null){

    double baseMaiorC = double.parse(baseMaior);
    double baseMenorC = double.parse(baseMenor);
    double alturaC = double.parse(altura);

    double area = ((baseMaiorC+baseMenorC)*alturaC)/2;

    print("A área do trapézio é igual a $area cm³!");
  }else{
    print("Erro, tente novamente.");
  }
}



void bhaskara(){
  print("Informe o valor de A");
  String? a = stdin.readLineSync();
  print("Informe o valor de B");
  String? b = stdin.readLineSync();
  print("Informe o valor de C");
  String? c = stdin.readLineSync();

  if (a != null && b != null && c != null){
    double aC = double.parse(a);
    double bC = double.parse(b);
    double cC = double.parse(c);

    double x1 = (-bC+(sqrt((bC*bC)-4*aC*cC)))/2*aC;
    double x2 = (-bC-(sqrt((bC*bC)-4*aC*cC)))/2*aC;

    print("O valor de X' é igual a $x1 e o valor de X'' é igual a $x2");
  }else{
    print("Erro, tente novamente");
  }
}



void torricelli(){
  print("Informe o valor da velocidade inicial: ");
  String? v0 = stdin.readLineSync();
  print("Informe o valor da aceleração");
  String? a = stdin.readLineSync();
  print("Informe a distancia em metros percorrida pelo veículo");
  String? deltaS = stdin.readLineSync();

  if (v0 != null && a != null && deltaS != null){
    double v0C = double.parse(v0);
    double aC = double.parse(a);
    double deltaSC = double.parse(deltaS);

    double vel = (sqrt(v0C)+2*aC*deltaSC);
    double velQuad = sqrt(vel);

    print("A valocidade final é igual a $velQuad m/S!");
  }else{
    print("Erro, tente novamente!");
  }
}




void main(){
  while(1>0){

    print("1 - CALCULAR ÁREA DO TRAPÉZIO");
    print("2 - CALCULAR A FÓRMULA DE BHASKARA");
    print("3 - CALCULAR A FÓRMULA DE TORRICELLI");
    print("4 - ENCERRAR O SISTEMA");

    print("Informe a opção desejada: ");
    String? opc = stdin.readLineSync();

    if (opc == "1"){
      trapezio();
    }else if(opc == "2"){
      bhaskara();
    }else if(opc == "3"){
      torricelli();
    }else if(opc == "4"){
      break;
    }else{
      print("Erro, tente novamente!");
    }
  }
}