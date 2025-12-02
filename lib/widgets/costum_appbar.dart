import 'package:flutter/material.dart';
import 'package:notes_app/widgets/costom_search_icon.dart';

class CostumAppbar extends StatelessWidget {
  const CostumAppbar({super.key, required this.title, required this.icon});
final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27),),
        Spacer(),
        CostumSearchIcon(icon: icon,),
      ],
    );
  }
}
