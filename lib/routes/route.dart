import 'package:flutter/material.dart';
import 'package:test_drive/pages/user_about.dart';
import 'package:test_drive/pages/user_contact.dart';
import 'package:test_drive/pages/user_profile.dart';
import 'package:test_drive/pages/user_project.dart';
import 'package:test_drive/pages/user_skill.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const ProfileUI());
      case '/about':
        return MaterialPageRoute(builder: (_) => const AboutUI());
      case '/contact':
        return MaterialPageRoute(builder: (_) => const ContactUI());
      case '/project':
        return MaterialPageRoute(builder: (_) => const ProjectUI());
      case '/skill':
        return MaterialPageRoute(builder: (_) => const SkillUI());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        body: Center(child: Text('Error page')),
      );
    });
  }
}
