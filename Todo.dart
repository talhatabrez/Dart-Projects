import 'dart:io';

void main(){
  //to store the tasks i am using a list
  var tasks = <String>[];
  var f = File('tasks.txt');
  if(f.existsSync()){
    tasks = f.readAsLinesSync();
  }

  //performing the operations (add, delete, exit)
  while(true){
    print("Enter the command (add, delete, exit)");
    var command = stdin.readLineSync();
    switch(command){

      case 'add':
        print("Enter a new task: ");
        var com = stdin.readLineSync();
        if(com != null){
          tasks.add(com);
          print("Success");
        } else {
          print("Try again");
        }
        break;

      case 'delete':
        print("Enter the id of the task to delete");
        int? id = int.tryParse(stdin.readLineSync()!);
        if(id != null){ 
          if(id < tasks.length){
            tasks.removeAt(id);
            print("Delete successful");
          } else {
            print("Enter the id carefully, it should be within 0 -> len(tasks)");
          }
        } else {
          print("Invalid id, enter again");
          break;
        }
        break;

      case 'exit':
        print("Thanks for using");
        f.writeAsStringSync(tasks.join('\n')); // to add a new line
        return;

      default:
        print("Todo created and exited successfully");
        return;
    }
  }
}