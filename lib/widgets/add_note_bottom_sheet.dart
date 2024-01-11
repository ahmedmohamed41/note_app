import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 85, 84, 84),
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
        child: Column(
          children: [
            CustomTextField(
              hintText: 'Title',
              labelText: 'Title',
            ),
            CustomTextField(
              hintText: 'content',
              maxLines: 5,
            ),
            CustomButton(
              text: 'add',
            )
          ],
        ),
      ),
    );
  }
}
