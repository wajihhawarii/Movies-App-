import 'package:flutter/material.dart';
import 'package:movietrain/core/constant/color.dart';
import 'package:movietrain/views/widgets/drawer/aboutinfo_appBar.dart';
import 'package:movietrain/views/widgets/drawer/informationsbox.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black.withOpacity(0.1),
      appBar: aboutInfoAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "ِِِApplication Informations",
                style: TextStyle(
                    color: AppColor.yellow,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              InformationsBox(
                content: info[0],
              ),
              const Divider(
                color: AppColor.blue,
              ),
              const Text(
                "Company Informations",
                style: TextStyle(
                    color: AppColor.yellow,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              InformationsBox(content: info[1]),
            ],
          ),
        ),
      ),
    );
  }
}

List info = [
  '''A movies app is a mobile application or software platform designed for users to browse, search, and watch movies on their smartphones, tablets, or other devices. Movies apps typically provide access to a wide range of films, including popular releases, classics, independent films, and more. They often offer features such as personalized recommendations, user reviews and ratings, trailers, and the ability to create watchlists. Some movies apps require a subscription or rental fee to access certain content, while others may be free with advertisements or offer a mix of free and paid content. Examples of popular movies apps include Netflix, Hulu, Amazon Prime Video, Disney+, and HBO Max''',
  '''Company software is a generic term that refers to software applications or programs developed specifically for the needs of a particular company or organization. It is software designed to assist with various tasks and processes within the company, tailored to its unique requirements and workflows'''
];
