import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linktree/profile_image.dart';

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
          const SizedBox(height: 26.0), // Add spacing between image and text
          Text(
            'Kush Munot',
            style: GoogleFonts.courgette(
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
