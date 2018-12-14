// Final won't prevent the change of the value however it protects from reassignment.
// Const protects the map from modify values. It becomes read only.
// When const is used as a variable, it can be used inside a data structure that has been declared as const.
// Two uses of const: By variable or by values

void main() {
  // Const on String literal: Error
  final myVariable = const 'Hello world.';

  // Const on integer literal: Error
  final myVariable2 = const 1;

  // Const on list literal: Yes
  final myList = const [
    'hi',
    'there'
  ];

  // Const on variable
  const redInSpanish = 'rojo';
  
  // Const on map literal: Yes
  final translator = const {
    'red': redInSpanish,
    'blue': 'azul',
  };
  
  translator['green'] = 'verde';
  
	// Throws an error
  // redInSpanish = 'purple';
}