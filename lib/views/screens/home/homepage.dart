import 'package:flutter/material.dart';
import 'package:movietrain/core/constant/color.dart';
import 'package:movietrain/views/screens/drawer/drawerhome.dart';
import 'package:movietrain/views/widgets/homepage/tabBar.dart';
import 'package:movietrain/views/widgets/homepage/trendmovie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  // Tabbar من اجل ان تعمل
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: AppColor.black,
        body: SingleChildScrollView(
            child: Column(
          children: [
            TrendingMovies(),
            TabBarHomePage(),
          ],
        )),
        drawer: DrawerHome());
  }
}
