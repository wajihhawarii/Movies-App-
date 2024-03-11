import 'package:flutter/material.dart';
import 'package:movietrain/core/constant/color.dart';
import 'package:movietrain/services/myservices.dart';
import 'package:movietrain/views/screens/drawer/aboutme_info.dart';
import 'package:movietrain/views/screens/home/homepage.dart';
import 'package:movietrain/views/screens/onbord1.dart';
import 'package:movietrain/views/screens/drawer/search.dart';
import 'package:movietrain/views/widgets/drawer/drawertem.dart';

class DrawerHome extends StatefulWidget {
  const DrawerHome({super.key});

  @override
  State<DrawerHome> createState() => _DrawerHomeState();
}

class _DrawerHomeState extends State<DrawerHome> {
  bool swap = true;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: swap ? AppColor.black.withOpacity(0.9) : AppColor.white,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: double.infinity,
                child: const Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/user.png"),
                    radius: 50,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              DrawerNavigationItem(
                swapp: swap,
                iconData: Icons.home,
                title: "MainPage",
                onTap: () {
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (context) {
                    return const HomePage();
                  }));
                },
                selected: true,
              ),
              DrawerNavigationItem(
                swapp: swap,
                iconData: Icons.search,
                title: "Search movie",
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const SearchMoviePage();
                  }));
                },
                selected: false,
              ),
              DrawerNavigationItem(
                swapp: swap,
                iconData: Icons.info,
                title: "About Me",
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const AboutMePage();
                  }));
                },
                selected: false,
              ),
              const Divider(
                thickness: 1.0,
              ),
              DrawerNavigationItem(
                swapp: swap,
                iconData: swap ? Icons.dark_mode_outlined : Icons.sunny,
                title: "Switch theme",
                selected: false,
                onTap: () {
                  setState(() {
                    swap = !swap;
                  });
                },
              ),
              DrawerNavigationItem(
                iconData: Icons.arrow_back_ios_new_outlined,
                title: "SignOut",
                selected: false,
                onTap: () {
                  MyServices.sharedPreferences.clear();
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const OnBordingOne();
                  }));
                },
                swapp: swap,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
