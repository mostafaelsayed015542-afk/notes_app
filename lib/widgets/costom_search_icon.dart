import 'package:flutter/material.dart';

class CostumSearchIcon extends StatelessWidget {
  const CostumSearchIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white.withOpacity(0.05),
      ),
      child: Center(child: Icon(icon)),
    );
  }
}
