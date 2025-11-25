import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constant.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
              
              decoration: InputDecoration(
                hintText: 'Title',
                hintStyle: TextStyle(color: kprimarycolor),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white
                  )
                ),
                enabledBorder: OutlineInputBorder(
                  
                  borderSide: BorderSide(
                    color: Colors.white
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  
                  borderSide: BorderSide(
                    color: kprimarycolor
                  )
                ),
              ),
            );
  }
}