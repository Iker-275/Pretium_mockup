import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:pretium_demo/routes/app_routes.dart';

import '../widgets/custom_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentIndex = 0;
  final PageController _controller = PageController();

  void _nextPage() {
    if (_currentIndex < _buildPages().length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {
      Navigator.pushNamed(context, AppRoutes.login);
    }
  }

  List<PageViewModel> _buildPages() {
    return [
      PageViewModel(
        title: "Direct Pay",
        body: "Pay with crypto across Africa effortlessly",
        image: const Icon(Icons.payment, size: 100, color: Colors.teal),
        decoration: _pageDecoration(),
      ),
      PageViewModel(
        title: "Accept Payments",
        body: "Accept stablecoin payments hassle-free",
        image: const Icon(Icons.account_balance_wallet_sharp,
            size: 100, color: Colors.teal),
        decoration: _pageDecoration(),
      ),
      PageViewModel(
        title: "Pay Bills",
        body: "Pay for utility services and earn rewards",
        image: const Icon(Icons.receipt_long, size: 100, color: Colors.teal),
        decoration: _pageDecoration(),
      ),
    ];
  }

  PageDecoration _pageDecoration() {
    return const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      bodyTextStyle: TextStyle(fontSize: 16),
      imagePadding: EdgeInsets.all(24),
      contentMargin: EdgeInsets.symmetric(horizontal: 16),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, AppRoutes.login);
                },
                child: const Text(
                  "Skip",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Expanded(
              child: IntroductionScreen(
                pages: _buildPages(),
                onDone: () =>
                    Navigator.pushReplacementNamed(context, AppRoutes.login),
                onSkip: () =>
                    Navigator.pushReplacementNamed(context, AppRoutes.login),
                showSkipButton: true,
                skip: const Text(""),
                next: const Text(""),
                done: const Text("",
                    style: TextStyle(fontWeight: FontWeight.w600)),
                dotsDecorator: const DotsDecorator(
                  size: Size(10, 10),
                  activeSize: Size(22, 10),
                  activeColor: Colors.teal,
                  color: Colors.black26,
                  spacing: EdgeInsets.symmetric(horizontal: 4),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                ),
                onChange: (index) {
                  setState(() => _currentIndex = index);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
              child: CustomButton(
                text: (_currentIndex < _buildPages().length - 1)
                    ? 'Next'
                    : 'Get started',
                onPressed: _nextPage,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
