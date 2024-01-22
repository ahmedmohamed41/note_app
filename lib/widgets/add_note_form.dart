import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_filed.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKay = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final DateTime now = DateTime.now();
  
  String? title, subTitle;
 
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKay,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            hintText: 'Title',
            labelText: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          CustomTextField(
            hintText: 'content',
            maxLines: 3,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(
            height: 15,
          ),
          
          const SizedBox(
            height: 15,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteloaded ? true : false,
                text: 'add',
                onTap: () {
                  if (formKay.currentState!.validate()) {
                    formKay.currentState!.save();
                    var noteModel = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: '${now.year}-${now.month}-${now.day}',
                      color:Colors.amber.value,
                    );
                    setState(() {});
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

// class ColorList extends StatelessWidget {
//   ColorList({super.key});
//   final List<Color> color = [
//     Colors.amber,
//     Colors.white,
//     Colors.blue,
//     Colors.red,
//     Colors.white10,
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 30,
//       child: ListView.builder(
//         itemCount: 5,
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) {
//           return GestureDetector(
//             onTap: () {},
//             child: CircleAvatar(
//               radius: 30,
//               backgroundColor: color[index],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
