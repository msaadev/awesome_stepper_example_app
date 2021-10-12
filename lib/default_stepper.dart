import 'package:awesome_stepper/awesome_stepper.dart';
import 'package:flutter/material.dart';

class DefaultStepper extends StatelessWidget {
  const DefaultStepper({Key? key}) : super(key: key);

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
