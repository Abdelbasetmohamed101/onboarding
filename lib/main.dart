import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(const MaterialApp(
    home: OnboardingScreen(),
  ));
}

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        // Page 1
        PageViewModel(
          title: "Welcome to MyApp",
          body: "This is a description of how the app works.",
          image: const Center(child: Icon(Icons.waving_hand, size: 50.0)),
        ),
        // Page 2
        PageViewModel(
          title: "Explore Features",
          body: "Discover amazing features in our app.",
          image: Image.asset("assets/images/feature.png", height: 175.0),
        ),
        // Page 3
        PageViewModel(
          title: "Get Started",
          body: "Ready to get started? Let's go!",
          image: const Center(
              child: Text("🚀", style: TextStyle(fontSize: 100.0))),
        ),
      ],
      onDone: () {
        // Navigate to the main screen when "Get Started" is pressed
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const MainScreen()),
        );
      },
      done: const Text("Get Started"),
      showSkipButton: true,
      skip: const Text("Skip"),
      next: const Icon(Icons.arrow_forward),
      dotsDecorator: DotsDecorator(
        activeColor: Colors.blue,
        size: const Size(10.0, 10.0),
        activeSize: const Size(20.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App"),
      ),
      body: const Center(
        child: Text("Welcome to the Main Screen!"),
      ),
      // Add your other widgets and components here
    );
  }
}
