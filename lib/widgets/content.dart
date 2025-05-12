import 'package:flutter/material.dart';

class OnboardingContent extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData iconPath;

  const OnboardingContent({
    super.key,
    required this.title,
    required this.subtitle,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.teal.shade100,
            child: Icon(
              iconPath,
              size: 38,
            ),
          ),
          const SizedBox(height: 30),
          Text(
            title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
