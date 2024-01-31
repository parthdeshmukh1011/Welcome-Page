//import 'dart:html';
import 'package:welcome_page/login_page.dart';
import 'package:flutter/material.dart';
//import 'package:rive/rive.dart';
//import 'package:rive/rive.dart';
//import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 240, 250, 249),
        Color.fromARGB(255, 216, 249, 247),
      ])),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Opacity(
                opacity: 0.8,
                child: Image.asset(
                  'images/image2.png',
                  fit: BoxFit.cover,

                  //colorBlendMode: BlendMode.softLight,
                  width: 300,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Welcome To PICT One',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'One Stop Solution For All PICTians',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 19),
            ),
            const SizedBox(
              height: 60,
            ),
            /*showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 200,
                color: Colors.amber,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text('Modal BottomSheet'),
                      ElevatedButton(
                        child: const Text('Close BottomSheet'),
                        onPressed: () => Navigator.pop(context), */
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet<void>(
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) {
                      return LoginPage();
                    });
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: const Color.fromARGB(255, 250, 229, 247),
                fixedSize: const Size(120, 40),
              ),
              child: const Text('Get Started'),
              //icon: Icon(Icons.arrow_right_alt),
            ),
            /*Expanded(
              child: ListView(
                padding: EdgeInsets.all(5.0),
                children: [
                  ClipPath(
                      clipper: WaveClipperTwo(),
                      child: Container(
                        height: 10,
                        width: 10,
                        color: Colors.pinkAccent,
                      ))
                ],
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
