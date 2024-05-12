import 'Education.dart';
import 'ProjectInfo.dart';

class UserInfo {
  final String name;
  final String description;
  final String position;
  final String company;
  final String phone;
  final String email;
  final String address;
  final List<Education> education;
  final List<ProjectInfo> projects;

  UserInfo({
    required this.name,
    required this.description,
    required this.position,
    required this.company,
    required this.phone,
    required this.email,
    required this.address,
    required this.education,
    required this.projects,
  });
}