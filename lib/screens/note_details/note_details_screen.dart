import 'package:flutter/material.dart';
import 'package:noteapp/model/note.dart';

class NoteDetailsScreen extends StatelessWidget {
  static const routeName ="/noteDetails";
  const NoteDetailsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Note note =ModalRoute.of(context)!.settings.arguments as Note;
    return  Scaffold(
      appBar: AppBar(
        title: Text(note.title),
      ),
      body: Container(
        // ignore: prefer_const_constructors
        margin: EdgeInsets.all(20),
        child: Text(
          note.description,
          // ignore: prefer_const_constructors
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}