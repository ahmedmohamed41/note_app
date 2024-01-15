import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custom_text_filed.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 80.0,
            ),
            const CustomAppBar(
              text: 'Edit Note',
              icon: Icons.coronavirus,
            ),
            const SizedBox(
              height: 30.0,
            ),
             CustomTextField(
              hintText: 'Title',
              labelText: 'Title',
            ),
            const SizedBox(
              height: 10.0,
            ),
            CustomTextField(
              hintText: 'content',
              maxLines: 4,
            ),
          ],
        ),
      );
  }
}