void main() {
  firstloop:

  for (var i = 0; i < 6; i++) {

    print('Outerloop $i');

    for (var j = 0; j < 6; j++) {
      print('Innerloop $j');

        if(j == 5) {
          print('Reached $j');
        }

        if(j == 2) {
          print('Continue firstloop');
          continue firstloop;
        }
      
    }
  }
}