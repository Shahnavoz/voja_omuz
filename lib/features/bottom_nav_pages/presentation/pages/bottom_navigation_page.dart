import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:job_project/features/bottom_nav_pages/presentation/blocs/bottom_nav/bottom_bloc.dart';
import 'package:job_project/features/bottom_nav_pages/presentation/blocs/bottom_nav/bottom_event.dart';
import 'package:job_project/features/bottom_nav_pages/presentation/blocs/bottom_nav/bottom_state.dart';
import 'package:job_project/features/competition_pages/presentation/pages/competition_page.dart';
import 'package:job_project/features/main_pages/presentation/pages/main_page.dart';
import 'package:job_project/features/my_words_pages/presentation/pages/my_words_page.dart';
import 'package:job_project/features/statistics_pages/statistic_page.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  List<Widget> pages = [
    MainPage(),
    MyWordsPage(),
    CompetitionPage(),
    StatisticPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomBloc, BottomState>(
      builder: (context, state) {
        return Scaffold(
          body: pages[state.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.blue,
            currentIndex: state.currentIndex,

            onTap:
                (value) =>
                    context.read<BottomBloc>().add(ChangePageEvent(value)),
            items: [
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.graduationCap),
                label: 'Асосӣ',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.bookOpen),
                label: 'Вожаҳои ман',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.trophy),
                label: 'Мусобиқа',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.chartColumn),
                label: 'Омор',
              ),
            ],
          ),
        );
      },
    );
  }
}
