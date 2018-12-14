// Const on Class Instance

void main() {
  // Throws an error:
  final myTranslator = const Translator('rojo');
  // If this is changed to a value different of rojo, will result in false
  final mySecondTranslator = const Translator('rojo');
  // final myTranslator = new Translator();
  // myTranslator.redInSpanish = 'rojo';

  print(myTranslator == mySecondTranslator);
}

class Translator {
  final String redInSpanish;

  // Constructor function
  const Translator(this.redInSpanish);
}