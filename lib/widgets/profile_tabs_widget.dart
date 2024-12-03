import 'package:flutter/material.dart';
import 'package:team_member_profile_ui/widgets/build_list_grid.dart';

class ProfileTabsWidget extends StatefulWidget {
  const ProfileTabsWidget({super.key});

  @override
  State<ProfileTabsWidget> createState() => _ProfileTabsWidgetState();
}

class _ProfileTabsWidgetState extends State<ProfileTabsWidget> {
  String selectedTab = "WORK";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildCustomButton('ABOUT'),
              buildCustomButton('WORK'),
              buildCustomButton('ACTIVITY'),
            ],
          ),
        ),
        Expanded(child: BuildListGrid(selectedTab: selectedTab)),
      ],
    );
  }

  Widget buildCustomButton(String text) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTab = text;
        });
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color:
                selectedTab == text ? const Color(0xff51505C) : Colors.white),
        //  Color(0xff49C9FF)
        child: Text(text,
            style: TextStyle(
              fontSize: 10,
              color:
                  selectedTab == text ? Colors.white : const Color(0xff51505C),
              fontWeight:
                  selectedTab == text ? FontWeight.bold : FontWeight.normal,
            )),
      ),
    );
  }
}
