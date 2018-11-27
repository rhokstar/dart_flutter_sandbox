//JSON to Model Instances

import 'dart:convert';

void main() {
  var rawJson = '{"url": "http://blah.jpg","id": 1}';
  
	var parsedJson = json.decode(rawJson);
  //   print(parsedJson['url']); // Get URL
  //   print(parsedJson['id']); // Get ID
  
	// Before: Long way of doing it...
  // var imageModel = new ImageModel(parsedJson['id'], parsedJson['url']);

	// After: Make it more concise using named constructor
  var imageModel = new ImageModel.fromJSON(parsedJson);
  
  
  print(imageModel.url);
  print(imageModel.id);
}

class ImageModel {
  int id;
  String url;
  
  // Constructor
  ImageModel(this.id, this.url);
  
  // Named Constructor
  ImageModel.fromJSON(parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
  }
}