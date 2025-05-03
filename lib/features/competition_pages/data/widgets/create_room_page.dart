import 'package:flutter/material.dart';
import 'package:job_project/features/competition_pages/data/widgets/coin_box.dart';
import 'package:job_project/features/competition_pages/data/widgets/drop_down_list.dart';
import 'package:job_project/features/competition_pages/presentation/blocs/container_color/container_color_bloc.dart';
import 'package:job_project/features/main_pages/data/widgets/carousel_images.dart';

class CreateRoomPage extends StatelessWidget {
  const CreateRoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Категорияи дарс',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 15),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 100),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(25),
                  ),

                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.close, size: 30),
                        ),
                        Center(
                          child: Text(
                            'Категорияро барои Озмун\nинтихоб кунед',

                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 15),

                        Expanded(
                          child: SizedBox(
                            child: ListView.separated(
                              // shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Container(
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            categories[index].img,
                                            width: 40,
                                          ),
                                          SizedBox(width: 15),
                                          Text(
                                            categories[index].title,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder:
                                  (context, index) => SizedBox(height: 10),
                              itemCount: categories.length,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Хӯрок',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ),

        SizedBox(height: 15),
        Text(
          'Шумораи калимаҳо',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 15),

        DropDownList(),
        SizedBox(height: 15),
        Text(
          'Шумораи тангаҳо',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 15),
        SizedBox(
          height: 100,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CoinBox(coinIndex: index);
            },
            separatorBuilder: (context, index) => SizedBox(width: 15),
            itemCount: coinCount.length,
          ),
        ),
        SizedBox(height: 25),

        Container(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              backgroundColor: Colors.blue,
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 150),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/premium-removebg-preview.png',
                            width: 200,
                          ),
                          SizedBox(height: 15),
                      
                          Text(
                            'Танҳо барои нафарони дорои аккаунти Преимум.',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 35),
                      
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(vertical: 15),
                                    backgroundColor: Colors.amber,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Text(
                                    'Преимум харед',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 25),
                      
                              Container(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(vertical: 15),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Text(
                                    'Фаҳмо',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.meeting_room_outlined,
                    size: 25,
                    color: Colors.white,
                  ),
                  SizedBox(width: 15),
                  Text(
                    'Сохтани ҳуҷра',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
