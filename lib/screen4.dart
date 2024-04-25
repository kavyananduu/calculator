import 'package:flutter/material.dart';

class Calc extends StatefulWidget {
  Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  final firstController = TextEditingController();

  final secondController = TextEditingController();

  double result=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          'Simplistic Calculator',
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                result.toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                ),
              ),
            ),

            TextField(
              controller: firstController,
              decoration: InputDecoration(
                labelText: 'Enter a Number',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: secondController,
              decoration: InputDecoration(
                labelText: 'Enter a Number',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 250,
                ),
                ElevatedButton(
                  onPressed: () {
                    print(firstController.text);
                    print(secondController.text);
                    double num=double.parse(firstController.text);
                    double num1=double.parse(secondController.text);
                    result=num+num1;
                    setState(() {

                    });
                    print(result);

                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: Text(
                    '+',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                ElevatedButton(
                  onPressed: () {
                    print(firstController.text);
                    print(secondController.text);
                    double num=double.parse(firstController.text);
                    double num1=double.parse(secondController.text);
                    result=num-num1;
                    setState(() {

                    });
                    print(result);

                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: Text(
                    '-',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                ElevatedButton(
                  onPressed: () {
                    print(firstController.text);
                    print(secondController.text);
                    double num=double.parse(firstController.text);
                    double num1=double.parse(secondController.text);
                    result=num*num1;
                    setState(() {

                    });
                    print(result);

                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: Text(
                    '*',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                ElevatedButton(
                  onPressed: () {
                    print(firstController.text);
                    print(secondController.text);
                    double num=double.parse(firstController.text);
                    double num1=double.parse(secondController.text);
                    result=num/num1;
                    setState(() {

                    });
                    print(result);

                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: Text(
                    '/',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
