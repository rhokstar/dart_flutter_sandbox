// Getters and private/public

import 'dart:async';

void main() {
	final bloc = new Bloc();
  
  // The long way
  //   bloc.emailController.stream.listen((value) {
  //     print(value);
  //   });
  
  // The short way by using getters and increases readability 
  bloc.email.listen((value) {
    print(value);
  });
  
  // The long way
 	// bloc.emailController.sink.add('My email');
  
  // The short way by using getters and increases readability
  bloc.changeEmail('My email');
}

class Bloc {

  // Private Fields: Underscore "emailController" will make the getter available only and not the emailController. This makes code cleaner in a multiple person development environment.

  final emailController = StreamController<String>();
  final passwordController = StreamController<String>();
  
  // Getter examples. Adds to stream. And because it's a function
  Function(String) get changeEmail => emailController.sink.add;
  Function(String) get changePassword => passwordController.sink.add;
  
  // ...and retrieves from stream
  // You can also set type using generic classes
  Stream<String> get email => emailController.stream;
  Stream<String> get password => passwordController.stream;
}