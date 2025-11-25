import 'package:flutter/material.dart';
import 'package:notes_app/widgets/costom_search_icon.dart';

class CostumAppbar extends StatelessWidget {
  const CostumAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27),),
        Spacer(),
        CostumSearchIcon(),
      ],
    );
  }
}
