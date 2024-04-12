import 'package:flutter/material.dart';
import 'package:resume_app/utills/routes.dart';
import 'package:resume_app/view/screens/achievement_page.dart';
import 'package:resume_app/view/screens/build_option_page.dart';
import 'package:resume_app/view/screens/carrier_objective.dart';
import 'package:resume_app/view/screens/contact_page.dart';
import 'package:resume_app/view/screens/declaration_page.dart';
import 'package:resume_app/view/screens/education.dart';
import 'package:resume_app/view/screens/experiences.dart';
import 'package:resume_app/view/screens/home_page.dart';
import 'package:resume_app/view/screens/pdf_page.dart';
import 'package:resume_app/view/screens/personal_page.dart';
import 'package:resume_app/view/screens/project_page.dart';
import 'package:resume_app/view/screens/references_page.dart';
import 'package:resume_app/view/screens/splash_screen.dart';
import 'package:resume_app/view/screens/technical_skills.dart';

void main() {
  runApp(
    const ResumeApp(),
  );
}

class ResumeApp extends StatelessWidget {
  const ResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        Routes.splash_screen: (context) => const SplashScreen(),
        Routes.home_page: (context) => const HomePage(),
        Routes.build_page: (context) => const BuildOptionPage(),
        Routes.contact_page: (context) => const ContactPage(),
        Routes.carrier_obj: (context) => const CarrierObjectivePage(),
        Routes.personal_page: (context) => const PersonPage(),
        Routes.education_page: (context) => const EducationPage(),
        Routes.experiences_page: (context) => const ExperiencesPage(),
        Routes.technical_skills: (context) => const TechnicalSkillsPage(),
        Routes.achievement_page: (context) => const AchievementPage(),
        Routes.project_page: (context) => const ProjectPage(),
        Routes.references_page: (context) => const ReferencesPage(),
        Routes.declaration_page: (context) => const DeclarationPage(),
        Routes.pdf_page: (context) => const PdfPage(),
      },
    );
  }
}
