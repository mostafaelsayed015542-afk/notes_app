import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Node_item.dart';
import 'package:notes_app/widgets/costum_appbar.dart';
import 'package:notes_app/widgets/notes_listview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 50),
          CostumAppbar(),
          SizedBox(height: 8,),
          Expanded(
            child:NotesListview(),
          ),
        ],
      ),
    );
  }
}
