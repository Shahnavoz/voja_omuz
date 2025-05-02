import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_project/features/competition_pages/presentation/blocs/drop_down/drop_down_bloc.dart';
import 'package:job_project/features/competition_pages/presentation/blocs/drop_down/drop_down_event.dart';
import 'package:job_project/features/competition_pages/presentation/blocs/drop_down/drop_down_state.dart';
import 'package:job_project/features/competition_pages/presentation/blocs/room/room_bloc.dart';
import 'package:job_project/features/competition_pages/presentation/blocs/room/room_event.dart';

class DropDownList extends StatefulWidget {
  const DropDownList({super.key});

  @override
  State<DropDownList> createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  var textController = TextEditingController(text: '4');
  List<String> items = ['4', '8'];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DropDownBloc, ShowDropDownListState>(
      builder: (context, state) {
        return Container(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,

                  borderRadius: BorderRadius.circular(6),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,top: 5),
                  child: TextField(
                    controller: textController,
                    onTap: () {
                      context.read<DropDownBloc>().add(
                        ShowDropListEvent(!state.isDropDownOpened),
                      );
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon:
                          state.isDropDownOpened == false
                              ? IconButton(
                                icon: Icon(Icons.arrow_forward_ios),
                                onPressed: () {
                                  context.read<DropDownBloc>().add(
                        ShowDropListEvent(!state.isDropDownOpened),
                      );
                                },
                              )
                              : IconButton(
                                icon: Icon(Icons.arrow_downward_outlined),
                                onPressed: () {
                                  context.read<DropDownBloc>().add(
                        ShowDropListEvent(!state.isDropDownOpened),
                      );
                                },
                              ),
                    ),
                  ),
                ),
              ),
              state.isDropDownOpened == true
                  ? Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              textController.text = items[index];
                              state.isDropDownOpened=!state.isDropDownOpened;
                            });
                          },
                          child: ListTile(title: Text(items[index])),
                        );
                      },
                    ),
                  )
                  : SizedBox(),
            ],
          ),
        );
      },
    );
  }
}
