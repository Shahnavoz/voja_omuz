import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_project/features/bottom_nav_pages/presentation/blocs/bottom_nav/bottom_bloc.dart';
import 'package:job_project/features/bottom_nav_pages/presentation/blocs/bottom_nav/bottom_event.dart';
import 'package:job_project/features/bottom_nav_pages/presentation/blocs/bottom_nav/bottom_state.dart';
import 'package:job_project/features/main_pages/presentation/blocs/smooth_change/smooth_bloc.dart';
import 'package:job_project/features/main_pages/presentation/blocs/smooth_change/smooth_event.dart';
import 'package:job_project/features/main_pages/presentation/blocs/smooth_change/smooth_state.dart';
import 'package:job_project/features/main_pages/data/widgets/carousel_images.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SmoothBloc, SmoothState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.grey.shade300,
                            child: Icon(
                              Icons.person,
                              size: 35,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name & LastName',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Премиум харед',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.orange,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Text(
                            '50',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Image.asset(
                            'assets/images/монетка-removebg-preview.png',
                            width: 50,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  CarouselSlider.builder(
                    itemBuilder: (context, index, value) {
                      return Container(
                        // width: MediaQuery.of(context).size.width*1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          // border: Border.all(),
                          image: DecorationImage(
                            image: AssetImage(carouselImages[index]),
                          ),
                        ),
                      );
                    },
                    itemCount: carouselImages.length,
                    options: CarouselOptions(
                      viewportFraction: 1,
                      enlargeFactor: 0.5,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 2.0,
                      initialPage: 2,
                      onPageChanged: (index, reason) {
                        context.read<SmoothBloc>().add(
                          ChangePositionEvent(index),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10),

                  AnimatedSmoothIndicator(
                    activeIndex: state.activeIndex,
                    count: carouselImages.length,
                    effect: CustomizableEffect(
                      dotDecoration: DotDecoration(
                        width: 10,
                        height: 10,
                        color: Colors.lightBlue[100]!,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      activeDotDecoration: DotDecoration(
                        color: Colors.blue,
                        width: 10,
                        height: 10,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  

                  SizedBox(height: 60,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue[200]!,
                              offset: Offset(1, 4),
                              spreadRadius: 0.5,
                            ),
                          ],
                        ),

                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            backgroundColor: Colors.blue.shade100,
                            elevation: 0,
                            
                          ),
                          
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey[700],
                                ),
                                child: Icon(Icons.sync, color: Colors.white),
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Такрори вожаҳо',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                            // color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(20),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.blue[700]!,
                            //     offset: Offset(1, 3),
                            //     spreadRadius: 0.5,
                            //   ),
                            // ],
                          ),
                        
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 15),
                              backgroundColor: Colors.blue,
                              elevation: 0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.lightbulb, color: Colors.white,size: 30,),
                                // SizedBox(width: 5),
                                Text(
                                  'Омӯхтан!',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),

                                SizedBox()
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue[200]!,
                              offset: Offset(1, 4),
                              spreadRadius: 0.5,
                            ),
                          ],
                        ),

                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade100,
                            elevation: 0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.hexagon_outlined, color: Colors.grey,size: 20,),
                              SizedBox(width: 5),
                              Text(
                                'Танзими категорияҳо',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
