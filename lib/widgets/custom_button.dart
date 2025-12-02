import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
              width: MediaQuery.of(context).size.width,
              height: 45,
              decoration: BoxDecoration(
                 color: kprimarycolor,
                 borderRadius: BorderRadius.circular(12),
              ),
              child: Center(child: Text('Add',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),)),
             
            );
  }
}