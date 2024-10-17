import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);

  final List<PageViewModel> pages = [
    PageViewModel(
      title: 'What you might have missed from Thursday in Australia',
      body:
          'Martin and Bagnaia on title pressure: One mistake, and it is a disasterThe top two in the Championship reflect on their battle for glory in 2024, and how they are approaching the final four rounds of the campaign.',
      image: Center(
        child: Image.asset('assets/images/p1.png'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
        bodyTextStyle: TextStyle(fontSize: 16.0),
      ),
    ),
    PageViewModel(
      title: '37 points to survival of the fittest',
      body:
          'The introduction of the Tissot Sprint last year and those precious 12 extra points each weekend made the run-in to the title a hugely different proposition. With 37 points available at each Grand Prix instead of the previous 25 points, it looks certain the battle between Jorge Martin (Prima Pramac Racing) and Pecco Bagnaia (Ducati Lenovo Team) will be settled at the showdown in Valencia in one month’s time.',
      image: Center(
        child: Image.asset('assets/images/p2.png'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
        bodyTextStyle: TextStyle(fontSize: 16.0),
      ),
    ),
    PageViewModel(
      title: 'Unlock exclusive access with Gresini Racing fan-powered sponsorship',
      body:
          'As the 2024 MotoGP™ season heads into its final stretch, Gresini Racing and MotoGP™ Guru offer fans the opportunity to become more than just spectators. With only a few races left—including the highly anticipated finale in Valencia from November 15-17—this is your last chance to join Gresini Racing as a sponsor and unlock access to exclusive benefits.',
      image: Center(
        child: Image.asset('assets/images/p3.png'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
        bodyTextStyle: TextStyle(fontSize: 16.0),
      ),
    ),
  ];

 @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text(
        'MOTO GP',
        style: TextStyle(
          fontWeight: FontWeight.bold, // Make the text bold
          fontSize: 24, // Optional: Adjust the font size if needed
        ),
      ),
      centerTitle: true,
      automaticallyImplyLeading: false, // Remove the back arrow
    ),
    body: Padding(
      padding: const EdgeInsets.fromLTRB(12, 80, 12, 12),
      child: IntroductionScreen(
        pages: pages,
        dotsDecorator: const DotsDecorator(
          size: Size(15, 15),
          color: Colors.black,
          activeSize: Size.square(20),
          activeColor: Colors.red,
        ),
        showDoneButton: true,
        done: const Text(
          'Done',
          style: TextStyle(fontSize: 20, color: Colors.red),
        ),
        showSkipButton: true,
        skip: const Text(
          'Skip',
          style: TextStyle(fontSize: 20, color: Colors.red),
        ),
        showNextButton: true,
        next: const Icon(
          Icons.arrow_forward,
          size: 25,
          color: Colors.red,
        ),
        onDone: () => onDone(context),
        curve: Curves.bounceOut,
      ),
    ),
  );
}


  void onDone(context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomeScreen()));
  }
}
