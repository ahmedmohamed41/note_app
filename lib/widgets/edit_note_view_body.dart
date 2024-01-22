import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custom_text_filed.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 55.0,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ??
                  widget.note.title; // title is null ?? yes =>widget.note.title
              widget.note.subTitle = subTitle ??
                  widget.note
                      .subTitle; // subTitle is null ?? yes =>widget.note.subTitle
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            text: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 30.0,
          ),
          CustomTextField(
            onChanged: (date) {
              title = date;
            },
            hintText: widget.note.title,
          ),
          const SizedBox(
            height: 10.0,
          ),
          CustomTextField(
            onChanged: (date) {
              subTitle = date;
            },
            hintText: widget.note.subTitle,
            maxLines: 4,
          ),
        ],
      ),
    );
  }
}
