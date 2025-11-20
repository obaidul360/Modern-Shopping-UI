import 'dart:developer';

import 'package:flutter/material.dart';

import '../db_notes/db.dart';

class NoteAddScreen extends StatefulWidget {
  const NoteAddScreen({super.key});

  @override
  State<NoteAddScreen> createState() => _NoteAddScreenState();
}

class _NoteAddScreenState extends State<NoteAddScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController detailsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Note Add Screen")),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Title",
                  border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(15)),
                ),
              ),
              TextField(
                controller: detailsController,
                maxLines: 100,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Details",
                  border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Map<String, dynamic> data = {
            "title": titleController.text,
            "details": detailsController.text,
            "id": 1,
            "created_at": "${DateTime.now()}",
          };
          NotesData.list.add(data);
          Navigator.pop(context);
        },
        child: Text("Save"),
      ),
    );
  }
}
