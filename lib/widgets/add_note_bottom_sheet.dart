import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_filed.dart';


class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              hintText: 'Title',
              labelText: 'Title',
            ),
            CustomTextField(
              hintText: 'content',
              maxLines: 3,
            ),
            const SizedBox(
              height: 15,
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
