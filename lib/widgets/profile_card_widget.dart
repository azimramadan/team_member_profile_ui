import 'package:flutter/material.dart';

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Software',
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.black.withOpacity(.6),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Engineer',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.black.withOpacity(.6),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Type',
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.black.withOpacity(.4),
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  'Senior Employee ',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(.5),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Joined',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.black.withOpacity(.4),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Sep 2018',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(.5),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Experience',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.black.withOpacity(.4),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '4 Years',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(.5),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Container(
              height: 250,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                image: const DecorationImage(
                    image: AssetImage('assets/images/avatar.png'),
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
