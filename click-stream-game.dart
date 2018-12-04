// Click stream game

// The reason why streams are used is because most Dart/Flutter libs use streams.
// We can compose streams (processing pipeline) out of easily resuable functions.
// Can be really easy to read streams and understand how they modify data.
// Streams are all about time series data - far easier to do some time-related stuff with streams.

import 'dart:html';

void main() {
  final ButtonElement button = querySelector('button');
  
  button.onClick // This is a stream of events and dart creates this for us.
  	.timeout(
    	new Duration(seconds: 1), // Waits for 1 second to pass without an event.
      onTimeout: (sink) => sink.addError('You lost!!!')
    )
    .listen(
      (event) {},
      onError: (err) => print(err)
    );

}