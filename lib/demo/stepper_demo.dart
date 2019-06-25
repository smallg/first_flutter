import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stepper Demo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Theme(
              data: Theme.of(context).copyWith(
                primaryColor: Colors.black,
              ),
              child: Stepper(
                currentStep: _currentStep,
                onStepContinue: () {
                  setState(() {
                    _currentStep < 2 ? _currentStep += 1 : _currentStep = 0;
                  });
                },
                onStepCancel: () {
                  setState(() {
                    _currentStep > 0 ? _currentStep -= 1 : _currentStep = 0;
                  });
                },
                onStepTapped: (int value) {
                  setState(() {
                    _currentStep = value;
                  });
                },
                steps: [
                  Step(
                    title: Text('Login'),
                    subtitle: Text('Login first'),
                    content: Text('Login xxxxx...'),
                    isActive: _currentStep == 0,
                  ),
                  Step(
                    title: Text('Choose Plan'),
                    subtitle: Text('Choose you plan.'),
                    content: Text('Choose Plan xxxxx...'),
                    isActive: _currentStep == 1,
                  ),
                  Step(
                    title: Text('Confirm payment'),
                    subtitle: Text('Confirm your payment method.'),
                    content: Text('Confirm payment xxxxx...'),
                    isActive: _currentStep == 2,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
