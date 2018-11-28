// Just like JS Promises

import 'dart:async';

/* The long way...

main () {
	print('Getting the data...');

  get('http://yourURLhere')
				When the data is feteched successfully, a result of the <Future>
    .then((result) {
      print(result);
    });
}

*/

// The cleaner-concise way by async/await
main () async {
  print('Getting the data...');
  
  var result = await get('http://yourURLhere');	// needs async keyword to avoid error
  
  print(result);
}

// get Method https://docs.flutter.io/flutter/dart-io/HttpClient/get.html

Future<String> get(String url) {
  return new Future.delayed(new Duration(seconds: 3), () {
    return 'Received the data...';
  });
}