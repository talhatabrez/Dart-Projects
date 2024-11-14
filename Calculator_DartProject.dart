import 'dart:io';

void main(){
  print("Enter your input numbers:");
  
  print("Number 1: ");
  double? num1 = double.parse(stdin.readLineSync()!);

  print("Number 2: ");
  double? num2 = double.parse(stdin.readLineSync()!);

  print("Enter the operation you would like to perform: (addition, subtraction, multiplication, division)");
  String? oper = stdin.readLineSync();

  double result;

  switch(oper){
    case 'addition':
      result = num1 + num2;
      break;
    
    case 'subtraction':
      result = num1 - num2;
      break;
    
    case 'multiplication':
      result = num1 * num2;
      break;

    case 'division':
      result = num1 / num2;
      break;

    default:
      print('Enter the numbers correctly');
      return;
  }
  print('After performing your arithmetic operation the result is $result');
}