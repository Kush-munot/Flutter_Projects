import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import "package:simple_icons/simple_icons.dart";

void _launchPortfolioURL() async {
  final Uri url = Uri.parse(
      'https://kushmunot.netlify.app/'); // Replace with your external URL
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

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
      height: 470.0,
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
              // Replace with the name of your chosen Google Font
              textStyle: const TextStyle(
                fontSize: 40.0, // Adjust the font size
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 16.0), // Add spacing between the buttons
          const GithubButton(),
          const SizedBox(height: 16.0), // Add spacing between the buttons
          const PortfolioButton(),
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

// class GithubButton extends StatelessWidget {
//   const GithubButton({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       icon: const Icon(SimpleIcons.github),
//       onPressed: _launchPortfolioURL,
//       style: IconButton.styleFrom(
//         backgroundColor: Colors.black, // Set the button's background color
//       ),
//       child: const Row(
//         children: [

//           SizedBox(width: 8.0),
//           Text(
//             'Explore my Github',
//             style: TextStyle(
//               color: Colors.white,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class GithubButton extends StatelessWidget {
  const GithubButton({Key? key}) : super(key: key);

  void _launchGithubURL() async {
    final Uri url = Uri.parse(
        'https://github.com/Kush-munot'); // Replace with your external URL
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _launchGithubURL,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black, // Set the button's background color
          borderRadius: BorderRadius.circular(8.0), // Add some rounded corners
        ),
        padding: const EdgeInsets.all(10.0),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 8.0),
            Text(
              'Explore my Github',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PortfolioButton extends StatelessWidget {
  const PortfolioButton({Key? key}) : super(key: key);

  void _launchPortfolioURL() async {
    final Uri url = Uri.parse('https://kushmunot.netlify.app/');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _launchPortfolioURL,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.redAccent, // Set the button's background color
          borderRadius: BorderRadius.circular(8.0), // Add some rounded corners
        ),
        padding: const EdgeInsets.all(10.0),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 8.0),
            Text(
              'Explore my Portfolio',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
