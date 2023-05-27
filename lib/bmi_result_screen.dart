import 'package:flutter/material.dart';

import 'info_screen.dart';

class BMIResultScreen extends StatelessWidget {

  final int result;
  final bool isMale;
  final int age;

  BMIResultScreen({
    @required this.result,
    @required this.age,
    @required this.isMale,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Result',
        ),
        leading: IconButton(
          onPressed: ()
          {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InfoPage(),
                  ),
                );
              },
              icon: Icon(
                Icons.info_outline,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 80.0,
                  ),
/*                  Text(
                    'Gender: ${isMale ? 'Male' : 'Female' }',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Age: $age',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),*/
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'BMI Result: $result',
                    style: TextStyle(
                      fontSize: 27.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child:
                      Column(
                        children: [
                          if (age < 20)
                          Text(
                            'BMI is not accurate for ages below 20',

                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          if (result < 18.5 && age >= 20)
                            Text(
                              'You are underweight !',

                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          if (result >= 18.5 && result <= 24.9 && age >= 20)
                            Text(
                              'You have ideal weight',

                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          if (result >= 25 && result <= 29.9 && age >= 20)
                            Text(
                              'You are overweight !',

                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          if (result >= 30 && age >= 20)
                            Text(
                              'You are obese, Try exercising more !',

                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
