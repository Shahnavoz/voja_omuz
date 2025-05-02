import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_project/features/competition_pages/presentation/blocs/drop_down/drop_down_bloc.dart';
import 'package:job_project/features/competition_pages/presentation/blocs/drop_down/drop_down_event.dart';
import 'package:job_project/features/competition_pages/presentation/blocs/drop_down/drop_down_state.dart';
import 'package:job_project/features/competition_pages/presentation/blocs/room/room_bloc.dart';
import 'package:job_project/features/competition_pages/presentation/blocs/room/room_event.dart';
import 'package:job_project/features/competition_pages/presentation/blocs/room/room_state.dart';
import 'package:job_project/features/competition_pages/data/widgets/create_room_page.dart';
import 'package:job_project/features/competition_pages/data/widgets/enter_to_room_page.dart';

class CompetitionPage extends StatefulWidget {
  const CompetitionPage({super.key});

  @override
  State<CompetitionPage> createState() => _CompetitionPageState();
}

class _CompetitionPageState extends State<CompetitionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    child: Center(
                      child: Image.asset('assets/images/мусобиқа.png'),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Реҷаи бозӣ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15),
                  BlocBuilder<RoomBloc, ChangePositionState>(
                    builder: (context, state) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      context.read<RoomBloc>().add(
                                        ChangePositionEvent(!state.isOpened),
                                      );
                                    },
                                    child: Container(
                                      width:
                                          MediaQuery.of(context).size.width *
                                          0.43,
                                      height: 95,
                                      decoration: BoxDecoration(
                                        color:
                                            state.isOpened == true
                                                ? Colors.blue
                                                : Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border(
                                          bottom: BorderSide(
                                            color:
                                                state.isOpened == true
                                                    ? Colors.blue[900]!
                                                    : Colors.grey,
                                            width: 3,
                                          ),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Сохтани ҳуҷра',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                state.isOpened == true
                                                    ? Colors.white
                                                    : Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  state.isOpened == true
                                      ? Positioned(
                                        right: -10,
                                        top: -10,
                                        child: Container(
                                          padding: EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.blue,
                                            border: Border.all(
                                              color: Colors.white,
                                              width: 5,
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.check,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                      : SizedBox(),
                                ],
                              ),

                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      context.read<RoomBloc>().add(
                                        ChangePositionEvent(!state.isOpened),
                                      );
                                    },
                                    child: Container(
                                      width:
                                          MediaQuery.of(context).size.width *
                                          0.43,
                                      height: 95,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border(
                                          bottom: BorderSide(
                                            color:
                                                state.isOpened == true
                                                    ? Colors.grey
                                                    : Colors.blue[900]!,
                                            width: 3,
                                          ),
                                        ),

                                        color:
                                            state.isOpened == true
                                                ? Colors.white
                                                : Colors.blue,
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Ба ҳуҷра ворид шудан',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                state.isOpened == true
                                                    ? Colors.black
                                                    : Colors.white,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),

                                  state.isOpened == false
                                      ? Positioned(
                                        right: -10,
                                        top: -10,
                                        child: Container(
                                          padding: EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.blue,
                                            border: Border.all(
                                              color: Colors.white,
                                              width: 5,
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.check,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                      : SizedBox(),
                                ],
                              ),
                            ],
                          ),

                          SizedBox(height: 25),

                          state.isOpened == true
                              ? CreateRoomPage()
                              : EnterToRoomPage(),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
