import 'package:test/test.dart';
import 'package:imc/imc.dart' as app;
import 'package:imc/classes/pessoa.dart' as pessoa;

void main() {
  test('Retorna erro ao digitar texto no peso', () {
    expect(() => pessoa.Pessoa("Fulano").setPeso("adasdasdasd"),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Retorna erro ao digitar valor negativo no peso', () {
    expect(() => pessoa.Pessoa("Fulano").setPeso("-91"),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Retorna o peso ao digitar um valor válido', () {
    expect(pessoa.Pessoa("Fulano").setPeso("91"), 91);
  });

  test('Retorna erro ao digitar texto na altura', () {
    expect(() => pessoa.Pessoa("Fulano").setAltura("adasdasdasd"),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Retorna erro ao digitar valor negativo na altura', () {
    expect(() => pessoa.Pessoa("Fulano").setAltura("-91"),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Retorna a altura ao digitar um valor válido', () {
    expect(pessoa.Pessoa("Fulano").setAltura("1.75"), 1.75);
  });

  test('Retorna o valor do IMC', () {
    expect(app.calcularIMC(91, 1.75).toStringAsFixed(2), "29.71");
  });

  group('Imprimindo IMC', () {
    var valuesToTest = {
      {'valor': 15.99}: "Resultado: magreza grave",
      {'valor': 16}: "Resultado: magreza moderada",
      {'valor': 17}: "Resultado: magreza leve",
      {'valor': 18.5}: "Resultado: saudável",
      {'valor': 25}: "Resultado: sobrepeso",
      {'valor': 30}: "Resultado: obesidade I",
      {'valor': 35}: "Resultado: obesidade II (severa)",
      {'valor': 40}: "Resultado: obesidade III (mórbida)",
    };

    valuesToTest.forEach((value, expected) {
      test('IMC: $value Esperado: $expected', () {
        expect(app.imprimirResultado(double.parse(value['valor'].toString())),
            equals(expected));
      });
    });
  });
}
