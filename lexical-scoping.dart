void main(){

  b();
  // c(); // Not declared.

  // b(){
  //   print('New b');
  // }

  a();
}

a(){
  print('External a');
}

b(){
  print('In b');
  
  c(){
    print('In c');
  }

  a(){
    print('Internal a');
  }

  c();
  a();
}