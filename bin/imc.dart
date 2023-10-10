import 'package:imc/classes/pessoa.dart';
import 'package:imc/imc.dart' as imc;

void main(List<String> arguments) {
  double resultado = 0;
  String peso, altura;
  String paciente = imc.lerNome("Digite o nome do paciente:");
  Pessoa pessoa = Pessoa(paciente);

  do {
    try {
      peso = imc.lerDados("Digite o peso de ${pessoa.getNome()}");
      resultado = pessoa.setPeso(peso);
    } catch (e) {
      print("Peso inválido!!!");
    }
  } while (resultado == 0);

  do {
    try {
      altura = imc.lerDados("Digite a altura de ${pessoa.getNome()}");
      resultado = pessoa.setAltura(altura);
    } catch (e) {
      print("Altura inválida!!!");
    }
  } while (resultado == 0);

  resultado = imc.calcularIMC(pessoa.getPeso(), pessoa.getAltura());

  print("------------------------------------------------------------------");
  print("${pessoa.getNome()} está com IMC ${resultado.toStringAsFixed(2)}");
  print(imc.imprimirResultado(resultado));
  print("------------------------------------------------------------------");
}
