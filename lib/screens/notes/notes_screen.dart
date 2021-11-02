import 'package:flutter/material.dart';
import 'package:noteapp/model/note.dart';
import 'package:noteapp/screens/note_details/note_details_screen.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your notes"),
      ),
      body:  ListView.builder(itemBuilder: (context,index){
        return ListTile(
          onTap: (){
            Navigator.pushNamed(context, NoteDetailsScreen.routeName,arguments: Note.notes[index]);
          },
          title: Text(Note.notes[index].title),
          subtitle: Text(Note.notes[index].description),
        );
      },
      itemCount: Note.notes.length,),
    );
  }
}