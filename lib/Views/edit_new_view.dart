import 'package:flutter/material.dart';
import 'package:notes_app/widgets/edit_vew_body.dart';

class EditNewView extends StatelessWidget {
  const EditNewView ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteVewBody(title: 'Edit Node',icon: Icons.check,),
      
    );
  }
}