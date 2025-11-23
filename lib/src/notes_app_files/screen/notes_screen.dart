import 'package:flutter/material.dart';

import '../db_notes/db.dart';
import '../detailsScreen/details_notes_screen.dart';
import '../notes_add_screen/notes_add_screen.dart';
import '../widgets/drawer_ui.dart';
import '../widgets/note_card_screen.dart';
import '../widgets/serach_field.dart';

class MyNotesScreen extends StatefulWidget {
  const MyNotesScreen({super.key});

  @override
  State<MyNotesScreen> createState() => _MyNotesScreenState();
}

class _MyNotesScreenState extends State<MyNotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notes Screen")),
      drawer: DrawerScreen(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SearchFieldScreen(),
            SizedBox(height: 10),
            noteBuilder()],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NoteAddScreen()),
          ).then((c) {
            setState(() {});
          });
        },
        child: Icon(Icons.add),
      ),

    );
  }

  Expanded noteBuilder() {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: NotesData.list.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NotesDetails(
                  title: "${NotesData.list[index]['title']}",
                  date: "${NotesData.list[index]['created_at']}",
                  details: "${NotesData.list[index]['details']}",
                ),
              ),
            );
          },
          child: NoteCardScreen(i: index),
        ),
      ),
    );
  }
}
