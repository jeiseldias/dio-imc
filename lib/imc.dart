import 'dart:convert';
import 'dart:io';
import 'dart:math';

String lerNome(String texto) {
  print(texto);
  return stdin.readLineSync(encoding: utf8) ?? "";
}

String lerDados(String texto) {
  print(texto);
  String dado = stdin.readLineSync(encoding: utf8) ?? "";

  return dado.replaceAll(",", ".");
}

double calcularIMC(double peso, double altura) {
  return peso / (pow(altura, 2));
}

String imprimirResultado(double imc) {
  String resposta;

  switch (imc) {
    case < 16:
      resposta = "Resultado: magreza grave";
      break;
    case < 17:
      resposta = "Resultado: magreza moderada";
      break;
    case < 18.5:
      resposta = "Resultado: magreza leve";
      break;
    case < 25:
      resposta = "Resultado: saudável";
      break;
    case < 30:
      resposta = "Resultado: sobrepeso";
      break;
    case < 35:
      resposta = "Resultado: obesidade I";
      break;
    case < 40:
      resposta = "Resultado: obesidade II (severa)";
      break;
    default:
      resposta = "Resultado: obesidade III (mórbida)";
      break;
  }

  return resposta;
}
