// Higher Order Functions

void main() {
  Function multiplyNumbers = (int a, int b) => print(a * b);
  someFunction("John", multiplyNumbers);

  var yourFunction = processFunction();
  yourFunction(5);
}

// Accepts function as a parameter
void someFunction(String name, Function functionOne) {
  print(name);
  functionOne(1, 5);
}

// Returns a function
Function processFunction() {
  Function addByTwo = (int number) => number + 2;
  return addByTwo;
}