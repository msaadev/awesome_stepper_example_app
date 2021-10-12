import 'package:awesome_stepper/awesome_stepper.dart';
import 'package:flutter/material.dart';

class CustomStepper extends StatelessWidget {
  const CustomStepper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Awesome Stepper'),
        centerTitle: true,
      ),
      body: awesomeStepper(),
    );
  }

  AwesomeStepper awesomeStepper() {
    return AwesomeStepper(
      headerColor: Colors.blue,
      progressColor: Colors.red,
      headerStyle: const TextStyle(color: Colors.white, fontSize: 20),
      progressBarAnimationDuration: const Duration(seconds: 1),
      headerAnimationDuration: const Duration(milliseconds: 500),
      progressStyle: const TextStyle(color: Colors.white, fontSize: 15),
      controlBuilder: (onNext, onBack) {
        return Container(
          color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: onBack,
                  icon: const Icon(Icons.arrow_back_ios_new_rounded)),
              IconButton(
                  onPressed: onNext,
                  icon: const Icon(Icons.arrow_forward_ios_rounded)),
            ],
          ),
        );
      },
      onStepChanged: (page) {
        // ignore: avoid_print
        print('active page = $page');
      },
      steps: [
        AwesomeStepperItem(
            label: 'Step 1',
            content: Container(
              alignment: Alignment.center,
              child: const Text('Step 1'),
            )),
        AwesomeStepperItem(
            label: 'Step 2',
            content: Container(
              color: Colors.red,
              alignment: Alignment.center,
              child: const Text('Step 2'),
            )),
        AwesomeStepperItem(
            label: 'Step 3',
            content: Container(
              color: Colors.pink,
              alignment: Alignment.center,
              child: const Text('Step 3'),
            )),
        AwesomeStepperItem(
            label: 'Step 4',
            content: Container(
              color: Colors.blue,
              alignment: Alignment.center,
              child: const Text('Step 4'),
            )),
        AwesomeStepperItem(
            label: 'Step 5',
            content: Container(
              color: Colors.green,
              alignment: Alignment.center,
              child: const Text('Step 5'),
            )),
        AwesomeStepperItem(
            label: 'Step 6',
            content: Container(
              color: Colors.purple,
              alignment: Alignment.center,
              child: const Text('Step 6'),
            )),
        AwesomeStepperItem(
            label: 'Step 7',
            content: Container(
              color: Colors.orange,
              alignment: Alignment.center,
              child: const Text('Step 7'),
            )),
      ],
    );
  }
}
