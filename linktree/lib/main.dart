import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const githubUrl = 'https://github.com/Kush-munot';
const portfolioUrl = 'https://kushmunot.netlify.app/';
const leetcodeUrl = 'https://leetcode.com/user4382M/';
const gfgUrl = 'https://auth.geeksforgeeks.org/user/munotkgm/practice';
const linkedinUrl = 'https://www.linkedin.com/in/kush-munot/';
const twitterUrl = 'https://twitter.com/intent/follow?screen_name=kushjain_17';
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //body: HeaderContainer(),
        body: SingleChildScrollView(
          child: Column(children: [
            HeaderContainer(),
            SizedBox(height: 16.0),
            CustomButton(
              githubUrl,
              'Explore My Github',
              Colors.black,
              FaIcon(
                FontAwesomeIcons.github,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(height: 16.0),
            CustomButton(
                portfolioUrl,
                'Explore My Portfolio',
                Colors.redAccent,
                FaIcon(
                  FontAwesomeIcons.faceSmileWink,
                  color: Colors.white,
                  size: 30,
                )),
            SizedBox(height: 16.0),
            CustomButton(
                leetcodeUrl,
                'Explore My LeetCode Profile',
                Colors.orangeAccent,
                FaIcon(
                  FontAwesomeIcons.terminal,
                  color: Colors.white,
                  size: 30,
                )),
            SizedBox(height: 16.0),
            CustomButton(
                gfgUrl,
                'Explore My GFG Profile',
                Colors.green,
                FaIcon(
                  FontAwesomeIcons.code,
                  color: Colors.white,
                  size: 30,
                )),
            SizedBox(height: 16.0),
            CustomButton(
                linkedinUrl,
                'Explore My LinkedIn',
                Colors.blue,
                FaIcon(
                  FontAwesomeIcons.linkedin,
                  color: Colors.white,
                  size: 30,
                )),
            SizedBox(height: 16.0),
            CustomButton(
                twitterUrl,
                'Explore My Twitter',
                Colors.blueGrey,
                FaIcon(
                  FontAwesomeIcons.twitter,
                  color: Colors.white,
                  size: 30,
                )),
            SizedBox(height: 16.0),
          ]),
        ),
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

class CustomButton extends StatelessWidget {
  final String link;
  final String text;
  final Color btnColor;
  final FaIcon iconData; // Icon data for the icon
  const CustomButton(this.link, this.text, this.btnColor, this.iconData,
      {super.key});

  void _launchGithubURL() async {
    final Uri url = Uri.parse(link);
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
          color: btnColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.all(10.0),
        width: 320,
        alignment: Alignment.center,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            iconData,
            const SizedBox(width: 8.0),
            Text(
              text,
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
