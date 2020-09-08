import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Add Text',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 30.0, color: Colors.amber)),
            SizedBox(height: 10.0),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            SizedBox(height: 10.0),
            FlatButton(
              child: Text('Add', style: TextStyle(color: Colors.white)),
              color: Colors.amber,
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
