void main() {
  List<Map<String, dynamic>> users = [
  { "name": "John", "age": 18 },
  { "name": "Jane", "age": 21 },
  { "name": "Jen", "age": 22 },
  { "name": "Mary", "age": 23 },
];

var over21s = users.where((user) => user["age"] > 21);
print(over21s);

}