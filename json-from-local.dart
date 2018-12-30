import 'dart:convert';

final data = r'''{
      "type": "String",
      "value": "java.lang.reflect.InvocationTargetException\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n\tat java.lang.reflect.Method.invoke(Method.java:498)\r\n\tat com.jfixby.scarabei.red.reflect.JavaMethodCall.invoke(JavaMethodCall.java:22)\r\n\tat com.jfixby.scarabei.red.reflect.JavaCallExecutor.executeCall(JavaCallExecutor.java:11)\r\n\tat com.jfixby.scarabei.red.reflect.CrossLanguageCallAdaptor.processCrossLanguageMethodCall(CrossLanguageCallAdaptor.java:26)\r\n\tat com.jfixby.scarabei.examples.reflect.TestMethodCall.main(TestMethodCall.java:27)\r\nCaused by: java.io.IOException: hello\r\n\tat com.jfixby.scarabei.examples.reflect.TestMethodCall.test(TestMethodCall.java:34)\r\n\t... 8 more\r\n\r\njava.io.IOException: hello\r\n\tat com.jfixby.scarabei.examples.reflect.TestMethodCall.test(TestMethodCall.java:34)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n\tat java.lang.reflect.Method.invoke(Method.java:498)\r\n\tat com.jfixby.scarabei.red.reflect.JavaMethodCall.invoke(JavaMethodCall.java:22)\r\n\tat com.jfixby.scarabei.red.reflect.JavaCallExecutor.executeCall(JavaCallExecutor.java:11)\r\n\tat com.jfixby.scarabei.red.reflect.CrossLanguageCallAdaptor.processCrossLanguageMethodCall(CrossLanguageCallAdaptor.java:26)\r\n\tat com.jfixby.scarabei.examples.reflect.TestMethodCall.main(TestMethodCall.java:27)\r\n"
    }''';
final map = jsonDecode(data);
final type = map['type'];
final value = map['value'];

void main() {

  print('$type');
  print('$value');

}