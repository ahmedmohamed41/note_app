import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text, required this.icon});
 final String text;
 final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
         CustomSearchIcon(
          icon: icon,
        )
      ],
    );
  }
}
