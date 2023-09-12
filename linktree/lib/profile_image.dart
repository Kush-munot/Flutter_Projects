import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0), // Adjust the padding values as needed
      child: Image(
        image: NetworkImage('https://i.imgur.com/XEHioJH.png'),
        height: 140,
        width: 140,
      ),
    );
  }
}
