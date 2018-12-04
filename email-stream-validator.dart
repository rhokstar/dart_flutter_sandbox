// Email Validation

// 

import 'dart:html';
import 'dart:async';

void main() {
	final InputElement input = querySelector('input');
  final DivElement div = querySelector('div');
  final validator = new StreamTransformer.fromHandlers(
  	handleData: (inputValue, sink) {
      if (inputValue.contains('@')) {
        sink.add(inputValue);
      } else {
        sink.addError('Enter a valid email address.');
      }
    }
  );
  
  
  // Stream of event objects
  input.onInput
    .map((dynamic event) => event.target.value)
    
    // Check inputValue
    .transform(validator)
    
    // Listen to stream
    .listen(
    	
    	// If email is valid, clear error div
			(inputValue) => div.innerHtml = '',
    
    	// Output error
      onError: (err) => div.innerHtml = err
    );
    
    // Find out what is in the stream
    // .listen((dynamic event) => print(event.target.value));

}