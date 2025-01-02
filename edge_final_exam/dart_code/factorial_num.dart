import 'dart:io';

void main() {
  print('enter a number');
  //get the user input
  int? num = int.tryParse(stdin.readLineSync()!);
  //check the condition 
  if (num != null && num > 0) {
    int factorialNum = 1;
    for (int i = 1; i <= num; i++) {
      factorialNum *= i;
    }
    print(factorialNum);
  } else {
    print('Please enter a valid non-negative number.');
  }
}
