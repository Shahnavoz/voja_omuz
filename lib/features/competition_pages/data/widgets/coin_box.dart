import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_project/features/competition_pages/presentation/blocs/container_color/container_color_bloc.dart';
import 'package:job_project/features/competition_pages/presentation/blocs/container_color/container_color_event.dart';
import 'package:job_project/features/competition_pages/presentation/blocs/container_color/container_color_state.dart';

class CoinBox extends StatelessWidget {
  Color color;
  Color textColor;
  int coinIndex;
  CoinBox({
    super.key,
    this.color = Colors.white,
    required this.coinIndex,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContainerColorBloc,ContainerColorState>(
      builder: (context,state) {
        return GestureDetector(
          onTap: () {
            context.read<ContainerColorBloc>().add(ChangeColorEvent(coinIndex));
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(horizontal: 17, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: state.coinCount[coinIndex]['isSelected']==false ? Colors.white : Colors.blue,
            ),
            child: Column(
              children: [
                Text(
                  state.coinCount[coinIndex]['coinNumbers'].toString(),
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: state.coinCount[coinIndex]['isSelected']==false ? Colors.black : Colors.white,
                  ),
                ),
                SizedBox(height: 3),
                Image.asset('assets/images/монетка-removebg-preview.png', width: 40),
              ],
            ),
          ),
        );
      }
    );
  }
}
