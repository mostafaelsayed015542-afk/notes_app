import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constant.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class AddNodeBottomsheet extends StatelessWidget {
  const AddNodeBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 20),
            child: CustomTextfield(hint: 'Title',maxlines: 1,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: CustomTextfield(hint: 'Content',maxlines: 7,),
          )
        ],
      ),
    );
  }
}