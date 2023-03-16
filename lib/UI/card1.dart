import 'package:flutter/material.dart';

import '../detail.dart';
import '../models/task.dart';

class Ecran1 extends StatelessWidget{
  List<Task> tasks = Task.generateTask(50);
  String tags='';


  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color: Colors.lightGreen,
    //   child: const Center(
    //     child: Text('Ecran 1'),
    //   ),
    // );
    return ListView.builder(
    itemCount: tasks.length,
    itemBuilder:(context,index)=> Card(
      elevation: 6,
      margin: const EdgeInsets.all(10),
      child: ListTile(
        leading: CircleAvatar(child: Text(tasks[index].id.toString()),backgroundColor: Colors.lightBlue,),
        title: Text(tasks[index].title),
        subtitle: Text(tasks[index].tags.join(" ")),
        onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => Detail(task: tasks[index]),
              )
              );
            },
      ),
    ));
    // return ListView.builder(
    // itemCount: tasks.length,
    // itemBuilder:(context,index) {
    //   return ListTile(
    //     leading: CircleAvatar(child: Text(tasks[index].id.toString()),backgroundColor: Colors.lightBlue,),
    //     title: Text(tasks[index].title),
    //     subtitle: Text(tasks[index].tags.join(" ")),
    //     onTap: (){
    //           Navigator.push(context, MaterialPageRoute(
    //             builder: (context) => Detail(task: tasks[index]),
    //           )
    //           );
    //         },
    //   );
    // });
  }

}
