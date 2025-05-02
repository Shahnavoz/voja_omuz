import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_project/features/bottom_nav_pages/presentation/blocs/bottom_nav/bottom_bloc.dart';
import 'package:job_project/features/competition_pages/presentation/blocs/container_color/container_color_bloc.dart';
import 'package:job_project/features/competition_pages/presentation/blocs/drop_down/drop_down_bloc.dart';
import 'package:job_project/features/competition_pages/presentation/blocs/room/room_bloc.dart';
import 'package:job_project/features/main_pages/presentation/blocs/smooth_change/smooth_bloc.dart';

import 'package:job_project/features/bottom_nav_pages/presentation/pages/bottom_navigation_page.dart';

void main() {
  runApp(
  MultiBlocProvider(providers: [
    BlocProvider(create: (context)=>BottomBloc()),
    BlocProvider(create: (context)=>DropDownBloc()),
    BlocProvider(create: (context)=>SmoothBloc()),
    BlocProvider(create: (context)=>ContainerColorBloc()),
    BlocProvider(create: (context)=>RoomBloc()),
    
  ], 
  child: MyApp())
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: BottomNavigationPage(),
        ),
      ),
    );
  }
}