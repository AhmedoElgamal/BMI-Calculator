import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Information',
        ),
        leading: IconButton(
          onPressed: ()
          {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Container(
        color: Colors.grey[300],
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Text(
                'BMI Calculator\n'
                    'BMI (Body Mass Index) is a measure of whether \nyou have a healthy weight for your height or not.'
                    '\n\n\n\n\n\n\nA BMI of less than 18.5 means that a person is underweight.\n\n'
                    'A BMI of between 18.5 and 24.9 is ideal.\n\n'
                    'A BMI of between 25 and 29.9 is overweight.\n\n'
                    'A BMI over 30 indicates obesity.\n'
                    '\n\n\n\n\n\n\n\nDeveloped by: Ahmed Elgamal',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
