import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linktree/header_container.dart';
import 'package:linktree/custom_button.dart';

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
