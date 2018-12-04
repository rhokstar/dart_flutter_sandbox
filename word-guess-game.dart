// Word guess game

import 'dart:html';

void main() {
  final ButtonElement button = querySelector('button');
  final InputElement input = querySelector('input');
  
  button.onClick // This is a stream of events and dart creates this for us.
  	// Has the user guessed 4 times?
    .take(4)
    
    // 'event' represents the button click
    .where((event) => input.value == 'banana')
    
    // Listen for events coming in
    .listen(
    	// On success
  		(event) => print('You got it!'),
    	onDone: () => print('Incorrect guess.')
  	);

}