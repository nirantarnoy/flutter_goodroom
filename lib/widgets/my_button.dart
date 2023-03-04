import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String imgbutton;
  final String textbutton;
  const MyButton(
      {super.key, required this.imgbutton, required this.textbutton});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 40,
                spreadRadius: 10,
              ),
            ],
          ),
          child: Center(
            child: Image.asset('assets/icons/${imgbutton}'),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '${textbutton}',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
