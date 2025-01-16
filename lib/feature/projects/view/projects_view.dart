import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: width,
      height: height,
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 72),
                child: Image.asset(Assets.images.mockup.path, package: 'gen'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 72),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [],
              ),
            ),
          )
        ],
      ),
    );
  }
}
