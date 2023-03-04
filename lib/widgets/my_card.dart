import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyCard extends StatelessWidget {
  final String title;
  final double balance;
  final String card_no;
  final String expired_date;
  final color;
  const MyCard(
      {super.key,
      required this.title,
      required this.balance,
      required this.card_no,
      required this.expired_date,
      required this.color});

  @override
  Widget build(BuildContext context) {
    var formatter = NumberFormat('#,##,##0.##');
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: 200,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 20,
                spreadRadius: 2,
              ),
            ]),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            '${title}',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '${formatter.format(balance)}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${card_no}',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                '${expired_date}',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
