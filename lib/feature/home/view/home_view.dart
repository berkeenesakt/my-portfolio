import 'package:flutter/material.dart';
import 'package:template/feature/home/tabs/about_me_tab.dart';
import 'package:template/feature/projects/view/projects_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = [
      const AboutMeTab(),
      const ProjectsView(),
    ];
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: tabs.length,
        itemBuilder: (context, index) {
          return tabs[index];
        },
      ),
    );
  }
}
