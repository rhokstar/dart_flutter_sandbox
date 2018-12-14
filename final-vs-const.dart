// Final won't prevent the change of the value however it protects from reassignment.
// Const protects the map from modify values. It becomes read only.
// When const is used as a variable, it can be used inside a data structure that has been declared as const.

void main() {
  const redInSpanish = 'rojo';
  
  final translator = const {
    'red': redInSpanish,
    'blue': 'azul',
  };
  
  translator['green'] = 'verde';
  
	// Throws an error
  // redInSpanish = 'purple';
}

