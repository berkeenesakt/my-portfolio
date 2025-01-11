import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:template/feature/widgets/chip/skill_chip.dart';
import 'package:template/feature/widgets/contact_button.dart';
import 'package:template/feature/widgets/container/common_container.dart';
import 'package:template/feature/widgets/job_widget.dart';
import 'package:template/product/data/contact_data.dart';
import 'package:template/product/data/job_data.dart';
import 'package:template/product/data/skills_data.dart';
import 'package:template/product/widget/padding/project_padding.dart';
import 'package:template/product/widget/spacing/project_spacing.dart';
import 'package:template/product/widget/text/my_text.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AboutMeTab extends StatelessWidget {
  const AboutMeTab({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: width,
      height: height,
      child: ListView(
        padding: ProjectPadding.contentPaddingHorizontal,
        children: [
          const SizedBox(height: ProjectSpacing.l),
          CommonContainer(
            gradient: true,
            content: Row(
              children: [
                Container(
                  height: 192,
                  width: 192,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(9600),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(9600),
                    child: Image.asset(
                      'assets/images/avatar.png',
                      package: 'gen',
                      height: 192,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: ProjectSpacing.l),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const MyText(
                        text: 'Berke Enes Aktümen',
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(height: ProjectSpacing.s),
                      MyText(
                        text: 'Mobile Developer',
                        fontSize: 20,
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      ProjectSpacing.spacer,
                      MyText(
                        text:
                            'With over 8 years of experience in web development, I specialize in creating beautiful, functional, and user-centered digital experiences. My passion lies in bridging the gap between complex technical solutions and intuitive user interfaces. ',
                        fontSize: 16,
                        maxLines: 3,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ProjectSpacing.spacer,
          SizedBox(
            height: 242,
            child: Row(
              children: [
                Expanded(
                  child: CommonContainer(
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const MyText(text: 'My Skills', fontSize: 24, fontWeight: FontWeight.w600),
                        ProjectSpacing.spacer,
                        Wrap(
                          runSpacing: ProjectSpacing.xs,
                          spacing: ProjectSpacing.xs,
                          children: List.generate(
                            SkillsData.skills.length,
                            (index) {
                              return SkillChip(label: SkillsData.skills[index]);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: ProjectSpacing.l),
                Expanded(
                  child: CommonContainer(
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const MyText(text: 'Contact Me', fontSize: 24, fontWeight: FontWeight.w600),
                        ProjectSpacing.spacer,
                        InkWell(
                          borderRadius: BorderRadius.circular(999),
                          onTap: () {
                            launchUrlString('mailto:${ContactData.email}');
                          },
                          child: Row(
                            children: [
                              const Icon(Icons.mail),
                              ProjectSpacing.spacerHorizontal,
                              const MyText(text: ContactData.email, fontSize: 16),
                            ],
                          ),
                        ),
                        ProjectSpacing.spacer,
                        InkWell(
                          borderRadius: BorderRadius.circular(999),
                          onTap: () {
                            launchUrlString('tel:${ContactData.phone}');
                          },
                          child: Row(
                            children: [
                              const Icon(Icons.phone),
                              ProjectSpacing.spacerHorizontal,
                              const MyText(text: ContactData.phone, fontSize: 16),
                            ],
                          ),
                        ),
                        ProjectSpacing.spacer,
                        Row(
                          children: [
                            const Icon(Icons.location_on),
                            ProjectSpacing.spacerHorizontal,
                            const MyText(text: ContactData.location, fontSize: 16),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ProjectSpacing.spacer,
          CommonContainer(
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MyText(text: 'Work Experience', fontSize: 24, fontWeight: FontWeight.w600),
                ProjectSpacing.spacer,
                ListView.separated(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    final job = JobData.jobs[index];
                    return JobWidget(job: job);
                  },
                  separatorBuilder: (context, index) => ProjectSpacing.spacer,
                  itemCount: JobData.jobs.length,
                ),
              ],
            ),
          ),
          ProjectSpacing.spacer,
          CommonContainer(
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MyText(text: 'Connect Me', fontSize: 20, fontWeight: FontWeight.w600),
                ProjectSpacing.spacer,
                Row(
                  children: [
                    ContactButton(
                      onPressed: () {
                        launchUrlString(ContactData.linkedIn);
                      },
                      icon: FontAwesomeIcons.linkedin,
                    ),
                    ProjectSpacing.spacerHorizontal,
                    ContactButton(
                      onPressed: () {
                        launchUrlString(ContactData.upwork);
                      },
                      icon: FontAwesomeIcons.squareUpwork,
                    ),
                    ProjectSpacing.spacerHorizontal,
                    ContactButton(
                      onPressed: () {
                        launchUrlString(ContactData.github);
                      },
                      icon: FontAwesomeIcons.github,
                    ),
                    ProjectSpacing.spacerHorizontal,
                    ContactButton(
                      onPressed: () {
                        launchUrlString(ContactData.x);
                      },
                      icon: FontAwesomeIcons.xTwitter,
                    ),
                  ],
                ),
              ],
            ),
          ),
          ProjectSpacing.spacer,
        ],
      ),
    );
  }
}
