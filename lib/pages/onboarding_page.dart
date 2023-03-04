import 'package:flutter/material.dart';
import 'package:flutter_wallet_ui/pages/loginpage.dart';
import 'package:flutter_wallet_ui/pages/mainpage.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'สวัสดี, ยินดีต้อนรับสู่ "My Room" แอพพลิเคชั่น',
          body: 'This is application for usage in individule organize',
          image: buildImage('assets/icons/atm-card.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Hello, Welcome to "My Room" application',
          body: 'This is application for usage in individule organize',
          image: buildImage('assets/icons/growth.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Hello, Welcome to "My Room" application',
          body: 'This is application for usage in individule organize',
          image: buildImage('assets/icons/atm-card.png'),
          decoration: getPageDecoration(),
        ),
      ],
      next: Text('ถัดไป'),
      done: Text('ตกลง'),
      showSkipButton: true,
      skip: Text('ข้าม'),
      dotsDecorator: getDotDecorator(),
      isProgressTap: false,
      showNextButton: false,
      onDone: () => Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => LoginPage())),
    ));
  }

  Widget buildImage(String s) {
    return Center(
      child: Image.asset(
        s,
        width: 250,
      ),
    );
  }

  PageDecoration getPageDecoration() {
    return PageDecoration(
        titleTextStyle: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ));
  }

  DotsDecorator getDotDecorator() {
    return DotsDecorator(
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ));
  }
}
