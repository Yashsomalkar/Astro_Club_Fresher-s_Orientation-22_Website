import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomePageDesktop extends StatefulWidget {
  const HomePageDesktop({Key? key}) : super(key: key);

  @override
  State<HomePageDesktop> createState() => _HomePageStateDesktop();
}

class _HomePageStateDesktop extends State<HomePageDesktop> {

  launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchURL(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Background_Image.jpeg'),
                  fit: BoxFit.cover
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 150.sp,
                      width: 300.sp,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/logos/astro_logo.png')
                        )
                      ),
                    ),
                    Container(
                      height: 150.sp,
                      width: 300.sp,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/logos/sntc_logo.png')
                          )
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0.sp, 0.sp, 0.sp, 50.sp),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Text(
                                  "B E W A R E ! ! !",
                                  style: GoogleFonts.creepster(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 150.sp,
                                      color: Colors.white,
                                    ),
                                  )
                              ),
                              Text(
                                  "B E W A R E ! ! !",
                                  style: GoogleFonts.creepster(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 150.sp,
                                      foreground: Paint()
                                        ..style = PaintingStyle.stroke
                                        ..strokeWidth = 1.sp
                                        ..color = Colors.black,
                                    ),
                                  )
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.sp, 0.sp, 0.sp, 200.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Stack(
                                children: [
                                  Text(
                                      "You are gonna get",
                                      style: GoogleFonts.creepster(
                                        textStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30.sp,
                                          color: Colors.white,
                                        ),
                                      )
                                  ),
                                  Text(
                                      "You are gonna get",
                                      style: GoogleFonts.creepster(
                                        textStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30.sp,
                                          foreground: Paint()
                                            ..style = PaintingStyle.stroke
                                            ..strokeWidth = 1.sp
                                            ..color = Colors.black,
                                        ),
                                      )
                                  )
                                ],
                              ),
                              Stack(
                                children: [
                                  Text(
                                      "sucked into a BLACKHOLE!",
                                      style: GoogleFonts.creepster(
                                        textStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30.sp,
                                          color: Colors.white,
                                        ),
                                      )
                                  ),
                                  Text(
                                      "sucked into a BLACKHOLE!",
                                      style: GoogleFonts.creepster(
                                        textStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30.sp,
                                          foreground: Paint()
                                            ..style = PaintingStyle.stroke
                                            ..strokeWidth = 1.sp
                                            ..color = Colors.black,
                                        ),
                                      )
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            const url = "https://www.instagram.com/astro.iitbhu/";
                            launchURL(url);
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                          ),
                          child: Container(
                            height: 70.sp,
                            width: 70.sp,
                            padding: EdgeInsets.all(12.sp),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35.sp),
                                color: Colors.white,
                            ),
                            child: Image.asset('icons/instagram.png'),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            const url = "https://chat.whatsapp.com/IxV1CI7uLTW1wvmcLxgp9e";
                            launchURL(url);
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                          ),
                          child: Container(
                            height: 70.sp,
                            width: 70.sp,
                            padding: EdgeInsets.all(12.sp),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35.sp),
                              color: Colors.white,
                            ),
                            child: Image.asset('icons/whatsapp.png'),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            const url = "https://www.facebook.com/astro.iitbhu/";
                            launchURL(url);
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                          ),
                          child: Container(
                            height: 70.sp,
                            width: 70.sp,
                            padding: EdgeInsets.all(12.sp),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35.sp),
                              color: Colors.white,
                            ),
                            child: Image.asset('icons/facebook.png'),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.sp, 20.sp, 0.sp, 60.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              const url = "https://discord.link/AstroIITBHU";
                              launchURL(url);
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.white),
                            ),
                            child: Container(
                              height: 70.sp,
                              width: 70.sp,
                              padding: EdgeInsets.all(12.sp),
                              decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(35.sp),
                                color: Colors.white,
                              ),
                              child: Image.asset('icons/discord.png'),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              const url = "https://www.linkedin.com/company/astroiitbhu/";
                              launchURL(url);
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.white),
                            ),
                            child: Container(
                              height: 70.sp,
                              width: 70.sp,
                              padding: EdgeInsets.all(12.sp),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35.sp),
                                color: Colors.white,
                              ),
                              child: Image.asset('icons/linkedin.png'),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              const url = "https://astroiitbhu.in/";
                              launchURL(url);
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.white),
                            ),
                            child: Container(
                              height: 70.sp,
                              width: 70.sp,
                              padding: EdgeInsets.all(12.sp),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35.sp),
                                color: Colors.white,
                              ),
                              child: Image.asset('icons/website.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ),
      designSize: const Size(1900, 875),
    );
  }
}