import 'package:flutter/material.dart';

class CircleProfilePic extends StatelessWidget {
  const CircleProfilePic({Key? key, required this.index}) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: (28 - 10) * (index - 1)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 1.6,
              color: Colors.grey,
            ),
          ),
          child: Image.asset(
            'assets/users-profile/user_$index.jpeg',
            width: 26.0,
            height: 26.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
