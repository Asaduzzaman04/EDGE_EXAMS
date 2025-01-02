void main() {
  //store the number which is greater then or equal to 50
  List<int> output = [];
  //store the number which is less then  50
  List<int> lessNum = [];
  //initialize an list of number array
  List<int> num = [12, 65, 30, 85, 45, 51, 100, 23, 78, 41];
  //loop trough the list and find the
  num.forEach((e) {
    if (e >= 50) {
      // Add numbers greater than or equal to 50 to the output list
      output.add(e);
    } else {
      //add  the number which is less then  50
      lessNum.add(e);
    }
  });
  print('list of  number which is greater then of equal to 50');
  print(output);
  print('list of  number which is less then  50');
  print(lessNum);
}
