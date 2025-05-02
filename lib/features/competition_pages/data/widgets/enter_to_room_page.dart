import 'package:flutter/material.dart';

class EnterToRoomPage extends StatefulWidget {
  const EnterToRoomPage({super.key});

  @override
  State<EnterToRoomPage> createState() => _EnterToRoomPageState();
}

class _EnterToRoomPageState extends State<EnterToRoomPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('ID-и ҳуҷраро ворид кунед', style: TextStyle(fontSize: 20)),
        SizedBox(height: 15),

        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: '123456...',
                hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        SizedBox(height: 60),
        Container(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              backgroundColor: Colors.blue,
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text(
                'Ҷустуҷӯи ҳуҷра',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
