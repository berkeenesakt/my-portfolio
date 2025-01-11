import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:template/product/widget/spacing/project_spacing.dart';
import 'package:template/product/widget/text/my_text.dart';

class JobWidget extends StatelessWidget {
  const JobWidget({
    required this.job,
    super.key,
  });

  final JobModel job;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                job.imagePath,
                package: 'gen',
                height: 64,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: ProjectSpacing.m),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(text: job.title, fontSize: 20, fontWeight: FontWeight.bold),
                MyText(text: job.company, fontSize: 16, color: Theme.of(context).colorScheme.secondary),
              ],
            ),
          ],
        ),
        ProjectSpacing.spacer,
        MyText(text: job.subtitle, fontSize: 16, color: Theme.of(context).colorScheme.secondary),
        ProjectSpacing.spacer,
        MyText(
          text: job.startDate.year == DateTime.now().year
              ? 'Since ${job.startDate.year}'
              : 'From ${job.startDate.year} to ${job.isPresent ? 'Present' : job.endDate!.year}',
          fontSize: 16,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ],
    );
  }
}
