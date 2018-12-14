// Final won't prevent the change of the value however it protects from reassignment while var is reassignable.

void main() {
  final translator = {
    'red': 'rojo',
    'blue': 'azul',
  };
  
  translator['green'] = 'verde';
}

