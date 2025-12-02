import 'package:flutter/material.dart';
import 'package:notes_app/widgets/costum_appbar.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class EditNoteVewBody extends StatelessWidget {
  const EditNoteVewBody({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [SizedBox(height: 50), CostumAppbar(icon: icon,title: title,), SizedBox(height: 8),Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: CustomTextfield(hint: 'Title',maxlines: 1,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomTextfield(hint: 'Content',maxlines: 7,),
              ),
              SizedBox(height: 16,),
              
            ],
          ),
        ),],
        ),
      ),
    );
  }
}
