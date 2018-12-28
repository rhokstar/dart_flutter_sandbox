// Functional Programming in Dart

void main() {

  // Normal function
  void addNumbers(int a, int b) {
    var sum = a + b;
    print(sum);
  }

  // Example 1
  Function addTwoNumbers = (int a, int b) {
    var sum = a + b;
    print(sum);
  };

  // Example 2a
  var multiplyByFour = (int number) {
    return number * 4;
  };

  // Example 2b
  var multiplyFour = (int number) => number * 4;

  // Example 2c
  Function addMoreNumbers = (int a, int b) => print(a + b);

  // Call lambda
  addTwoNumbers(2, 5);
  print(multiplyByFour(4));
  print(multiplyFour(5));
  addMoreNumbers(1, 2);

}
