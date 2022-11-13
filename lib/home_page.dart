import 'package:astro_orientation_website/home_page_desktop.dart';
import 'package:flutter/material.dart';

import 'home_page_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 500) {
            return HomePageMobile();
          } else {
            return HomePageDesktop();
        }
      }
    );
  }
}
