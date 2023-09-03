import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: HeaderContainer(),
      ),
    ),
  );
}

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 270.0,
      decoration: const BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(40.0),
          bottomLeft: Radius.circular(40.0),
        ),
      ),
      child: Column(
        children: [
          const ProfileImage(),
          const SizedBox(height: 16.0), // Add spacing between image and text
          Text(
            'Kush Munot',
            style: GoogleFonts.courgette(
              // Replace with the name of your chosen Google Font
              textStyle: const TextStyle(
                fontSize: 40.0, // Adjust the font size
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
