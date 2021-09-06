import 'package:flutter/material.dart';
import 'package:student_room/theme.dart';
import 'package:student_room/widgets/course_tile.dart';

class CoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/video.png'),
              ),
            ),
          ),
          ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(height: 225),
              Container(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                  color: backgroundColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Text(
                      'Brand Marketing Design',
                      style: blackTextStyle.copyWith(fontSize: 22),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'How to build strong company with passiona',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                    SizedBox(height: 25),
                    // NOTE: PREPARING
                    Text(
                      '# Preparing',
                      style: blackTextStyle.copyWith(fontSize: 18),
                    ),
                    CourseTile(
                      imageUrl: 'assets/icon.png',
                      title: 'Ideation',
                      value: 0.7,
                      isLocked: false,
                    ),
                    CourseTile(
                      imageUrl: 'assets/icon1.png',
                      title: 'Validate Idea',
                      value: 0.2,
                      isLocked: false,
                    ),
                    CourseTile(
                      imageUrl: 'assets/icon2.png',
                      title: 'Strong Promotion',
                      value: 0.0,
                      isLocked: true,
                    ),
                    SizedBox(height: 25),

                    // NOTE: # Targeting Customer
                    Text(
                      '# Targeting Customer',
                      style: blackTextStyle.copyWith(fontSize: 18),
                    ),
                    CourseTile(
                      imageUrl: 'assets/icon3.png',
                      title: 'App Survey',
                      value: 0.0,
                      isLocked: true,
                    ),
                    CourseTile(
                      imageUrl: 'assets/icon4.png',
                      title: 'Get Funding',
                      value: 0.0,
                      isLocked: true,
                    ),
                    CourseTile(
                      imageUrl: 'assets/icon5.png',
                      title: 'Ship to Investor',
                      value: 0.0,
                      isLocked: true,
                    ),
                    SizedBox(height: 50),

                    // NOTE: BUTTON

                    Container(
                      width: MediaQuery.of(context).size.width -
                          (2 * defaultMargin),
                      height: 50,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: blueColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17))),
                        onPressed: () {},
                        child: Text(
                          'Finish and Take Quiz',
                          style: whiteTextStyle.copyWith(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: MediaQuery.of(context).size.width -
                          (2 * defaultMargin),
                      height: 50,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xffECEEF5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17))),
                        onPressed: () {},
                        child: Text(
                          'Skip to Home',
                          style: greyTextStyle.copyWith(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 52),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
