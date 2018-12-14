void main() {
  var englishToSpanish = <String, String>{
    'red': 'rojo',
    'blue': 'azul',
    'green': 'verde'
  };

  englishToSpanish.forEach((englishColor, spanishColor) {
    print('$englishColor is $spanishColor in Spanish.');
  });
  
//  Or...
// 	var englishToSpanish = <String, String>{};
// 	englishToSpanish['red'] = 'rojo';
  
//   print(englishToSpanish['red']);
  // displays Rojo
}