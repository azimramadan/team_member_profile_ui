import 'package:flutter/material.dart';
import 'package:team_member_profile_ui/widgets/profile_card_widget.dart';
import 'package:team_member_profile_ui/widgets/profile_tabs_widget.dart';

void main() {
  runApp(const ProfileView());
}

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffE2F4FF),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 60, left: 24, right: 24, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProfileCardWidget(),
              SizedBox(
                height: 20,
              ),
              Expanded(child: ProfileTabsWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
