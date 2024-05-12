import 'package:flutter/material.dart';
import '../models/UserInfo.dart';
import '../widgets/bio_card.dart';
import '../widgets/contact_card.dart';
import '../widgets/education_card.dart';
import '../widgets/projects_card.dart';

class UserProfilePage extends StatelessWidget {
  final UserInfo userInfo;

  const UserProfilePage({super.key, required this.userInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              BioCard(userInfo: userInfo),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ContactCard(userInfo: userInfo),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: EducationCard(userInfo: userInfo),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ProjectsCard(userInfo: userInfo),
              ),
            ],
          ),
        ],
      ),
    );
  }
}