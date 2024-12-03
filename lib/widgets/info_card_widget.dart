import 'package:flutter/material.dart';

class InfoCardWidget extends StatelessWidget {
  const InfoCardWidget(
      {super.key,
      required this.subTitle1,
      required this.title,
      required this.subTitle2});
  final String subTitle2;
  final String subTitle1;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 32,
                color: Colors.black.withOpacity(.6),
                fontWeight: FontWeight.bold),
          ),
          Text(
            subTitle1,
            style: TextStyle(
                fontSize: 14,
                color: Colors.black.withOpacity(.5),
                fontWeight: FontWeight.bold),
          ),
          Text(
            subTitle2,
            style: TextStyle(
                fontSize: 14,
                color: Colors.black.withOpacity(.5),
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
