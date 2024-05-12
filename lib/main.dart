import 'package:flutter/material.dart';
import 'lib/models/Education.dart';
import 'lib/models/ProjectInfo.dart';
import 'lib/models/UserInfo.dart';
import 'lib/screens/user_profile_page.dart';

void main() {
  var userInfo = UserInfo(
    name: 'Narasimha Karthik',
    description: 'Being a seasoned software developer, I have a flair for creating robust applications using AWS, Java, and Spring Boot. With a strong foundation in cloud computing, microservices, and CI/CD, I have spent last three years transforming complex problems into scalable solutions. Now, I am ready for a new challenge where I can apply my skills and make a significant impact.',
    position: 'Software Developer',
    company: 'One Piece',
    phone: '(312) 555-1212',
    email: 'ng1@hawk.iit.edu',
    address: '10 W 31st St., Chicago, IL 60616',
    education: [
      Education(logo: 'assets/images/iit.jpg', institution: 'Illinois Tech', degree: 'Masters in CS', gpa: 4.0),
      Education(logo: 'assets/images/pes.jpg', institution: 'PES University', degree: 'Bachelors in CS', gpa: 3.5),
      Education(logo: 'assets/images/kvs.jpg', institution: 'KVD', degree: 'High School', gpa: 3.9)
    ],
    projects: [
      ProjectInfo(
          logo: 'assets/images/game.png',
          title: 'Music Streaming App',
          description: 'Designed and developed a music streaming application with offline playback and personalized recommendations.'
      ),
      ProjectInfo(
          logo: 'assets/images/physics.png',
          title: 'E-commerce Platform',
          description: 'Developed a responsive and user-friendly e-commerce platform using React JS.'
      ),
      ProjectInfo(
          logo: 'assets/images/programming.png',
          title: 'Finance Tracker',
          description: 'Designed and implemented a finance tracking system with real-time updates using Spring Boot.'
      ),
      ProjectInfo(
          logo: 'assets/images/graph.png',
          title: 'Healthcare Analytics',
          description: 'Utilized data analysis techniques to analyze and visualize healthcare data for insights and decision-making.'
      ),
      ProjectInfo(
          logo: 'assets/images/app-store.png',
          title: 'Fitness App',
          description: 'Created a fitness app with personalized workout plans and progress tracking using Swift 5.'
      ),
      ProjectInfo(
          logo: 'assets/images/ai.png',
          title: 'Virtual Assistant',
          description: 'Developed a virtual assistant capable of natural language processing and intelligent responses.'
      ),
    ],
  );

  runApp(MaterialApp(home: UserProfilePage(userInfo: userInfo)));
}