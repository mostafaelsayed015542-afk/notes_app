import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class AddNodeBottomsheet extends StatelessWidget {
  const AddNodeBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
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
               CustomButton(),
               SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }
}