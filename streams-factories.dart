import 'dart:async';

class Cake {}

// Order Constructor
class Order {
  String type;
  Order(this.type);
}

// 
void main() {
  // Create new stream
  final controller = new StreamController();

  // Create new order
  final order = new Order('chocolate');

  // The Baker: Determine if the cake is chocolate or not.
  final baker = new StreamTransformer.fromHandlers(
    // Sink object is not the same Sink in the controller
    handleData: (cakeType, sink) {
      if (cakeType == 'chocolate') {
        sink.add(new Cake()); // Make the cake.
      } else {
        sink.addError('Not a chocolate cake. I cannot bake that type.');
      }
    }
  );
  
  // Collect data and sends to stream
  controller.sink.add(order);

  // The StreamTransformer and Map handles data 1:1
  
  // Factory
  controller.stream
    // Order inspector extracts order type. Looks at every event. Fat arrow is an implicit return.
    .map((order) => order.type)
    
  	// Link to the baker to process
  	.transform(baker)
    
    // Baker gives back result to customer
    .listen(
    	// If the cake is chocolate, give cake
      (cake) => print ('Here is your cake $cake'),
    	// If cake is not chococlae, say why
    	onError: (err) => print(err)
    );
}