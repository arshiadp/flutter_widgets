import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedText'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText("arshia dp",
                  textStyle: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                  speed: const Duration(milliseconds: 500)),
            ],
            totalRepeatCount: 4, //4 times this animation will be reapeaded
            pause: const Duration(
                milliseconds: 200), //pause in between 1 2 anmiation
            displayFullTextOnTap: true,
            stopPauseOnTap:
                true, //when ever i touch the text animation will be stop
          ),
          AnimatedTextKit(
            animatedTexts: [
              RotateAnimatedText(
                'meow meow',
                textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.amber),
              ),
              RotateAnimatedText(
                'meow meow',
                textStyle:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
            totalRepeatCount: 4, //4 times this animation will be reapeaded
            pause: const Duration(
                milliseconds: 300), //pause in between 1 2 anmiation
            displayFullTextOnTap: true,
            stopPauseOnTap:
                true, //when ever i touch the text animation will be stop
          ),
          AnimatedTextKit(animatedTexts: [
            WavyAnimatedText("Hello World",
                textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w200,
                    color: Colors.blueGrey)),
            WavyAnimatedText("Hello World",
                textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w200,
                    color: Colors.deepPurple)),
          ])
        ]),
      ),
    );
  }
}
