import 'package:flutter/material.dart';
import 'package:movietrain/core/constant/color.dart';
import 'package:movietrain/views/screens/home/movies.dart';
import 'package:movietrain/views/screens/home/tv_series.dart';
import 'package:movietrain/views/screens/home/upcomming.dart';

class TabBarHomePage extends StatefulWidget {
  const TabBarHomePage({super.key});

  @override
  State<TabBarHomePage> createState() => _TabBarHomePageState();
}

class _TabBarHomePageState extends State<TabBarHomePage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController =
        TabController(length: 3, vsync: this); //هذه التعليمة هنا موقعها
    return Column(
      children: [
        TabBar(
            physics: const BouncingScrollPhysics(),
            labelPadding: const EdgeInsets.symmetric(horizontal: 25),
            isScrollable: true,
            controller: tabController, //ضروري جدا هذا المتحكم
            indicator: BoxDecoration(
                //   دائرة حول المختار
                borderRadius: BorderRadius.circular(10),
                color: Colors.amber.withOpacity(0.4)), //الدائرة الصفراء
            tabs: const [
              Tab(
                  child: Text(
                'Tv Series',
                style: TextStyle(color: AppColor.white, fontSize: 18),
              )),
              Tab(
                  child: Text(
                'Movies',
                style: TextStyle(color: AppColor.white, fontSize: 18),
              )),
              Tab(
                  child: Text(
                'Upcoming',
                style: TextStyle(color: AppColor.white, fontSize: 18),
              )),
            ]),
        //  const Text("The First number "),
        SizedBox(
            height: 900,
            width: MediaQuery.of(context).size.width,
            child: TabBarView(
                controller: tabController, //ضروري جدا هذا المتحكم
                children: const [
                  TvSeries(),
                  Movies(),
                  UpComing(),
                ]))
      ],
    );
  }
}
