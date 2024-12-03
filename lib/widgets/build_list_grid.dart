import 'package:flutter/material.dart';
import 'package:team_member_profile_ui/widgets/info_card_widget.dart';

class BuildListGrid extends StatelessWidget {
  final String selectedTab;
  final Map<String, List<Map<String, String>>> infoCards = const {
    "ABOUT": [
      {"title": "5 Years", "subTitle1": "Experience", 'subTitle2': ''},
      {"title": "B.Sc.", "subTitle1": "Degree", 'subTitle2': ''},
      {"title": "English", "subTitle1": "Language", 'subTitle2': ''},
      {"title": "Coding", "subTitle1": "Hobby", 'subTitle2': ''},
    ],
    "WORK": [
      {"title": "17", "subTitle1": "Projects", 'subTitle2': 'done'},
      {"title": "92%", "subTitle1": "Success", 'subTitle2': 'rate'},
      {"title": "5", "subTitle1": "Teams", 'subTitle2': 'null'},
      {"title": "243", "subTitle1": "Client", 'subTitle2': 'reports'},
    ],
    "ACTIVITY": [
      {"title": "1500+", "subTitle1": "Commits", 'subTitle2': ''},
      {"title": "120", "subTitle1": "Pull requests", 'subTitle2': ''},
      {"title": "300", "subTitle1": "Code reviews", 'subTitle2': ''},
      {"title": "50", "subTitle1": "Workshops attended", 'subTitle2': ''},
    ],
  };

  const BuildListGrid({super.key, required this.selectedTab});
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      childAspectRatio: .9,
      mainAxisSpacing: 16,
      children: infoCards[selectedTab]!.map((card) {
        return InfoCardWidget(
          subTitle2: card['subTitle2']!,
          subTitle1: card['subTitle1']!,
          title: card['title']!,
        );
      }).toList(),
    );
  }
}
