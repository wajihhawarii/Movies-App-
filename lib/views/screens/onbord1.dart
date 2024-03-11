import 'package:flutter/material.dart';
import 'package:movietrain/core/constant/color.dart';
import 'package:movietrain/core/datastatic/pageviewdate.dart';
import 'package:movietrain/views/widgets/onbording/bordingcirular.dart';
import 'package:movietrain/views/widgets/onbording/nextbutton.dart';
import 'package:movietrain/views/widgets/onbording/previousbutton.dart';

class OnBordingOne extends StatefulWidget {
  const OnBordingOne({super.key});

  @override
  State<OnBordingOne> createState() => _OnBord1State();
}

class _OnBord1State extends State<OnBordingOne> {
  PageController pageController = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black.withOpacity(0.5),
        body: PageView.builder(
            controller: pageController,
            scrollDirection: Axis.horizontal,
            onPageChanged: (x) {
              setState(() {
                index = x;
              });
            },
            itemCount: pageviewwlist.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(children: [
                SizedBox(
                  height: 550,
                  width: double.infinity,
                  child: Image.asset(
                    pageviewwlist[index].image,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                    margin: const EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            pageviewwlist[index].title,
                            style: const TextStyle(
                                color: AppColor.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          Text(
                            pageviewwlist[index].body,
                            style: TextStyle(
                                color: AppColor.white.withOpacity(0.6),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                PreviousButton(
                                    pageController: pageController,
                                    index: index),
                                Row(
                                  children: [
                                    ...List.generate(
                                      pageviewwlist.length,
                                      (indexcirculr) => BordingCircle(
                                        index: index,
                                        indexcirculr: indexcirculr,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 80,
                                    ),
                                    NextButton(
                                        pageController: pageController,
                                        index: index),
                                  ],
                                )
                              ])
                        ]))
              ]);
            }));
  }
}

//غالبا الاشياء التي تعتمد على الاشياء تربط عن طريق الدلائل