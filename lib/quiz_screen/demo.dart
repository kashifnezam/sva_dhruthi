import 'package:flutter/material.dart';

void main() => runApp(const Demo());

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Radio Buttons',
      home: RadioButtonsDemo(),
    );
  }
}

class RadioButtonsDemo extends StatefulWidget {
  @override
  _RadioButtonsDemoState createState() => _RadioButtonsDemoState();
}

class _RadioButtonsDemoState extends State<RadioButtonsDemo> {
  int selectedRadio = 0;

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Radio Buttons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio(
              value: 1,
              groupValue: selectedRadio,
              onChanged: (val) {
                setSelectedRadio(val!);
              },
            ),
            Text('Radio Button 1'),
            Radio(
              value: 2,
              groupValue: selectedRadio,
              onChanged: (val) {
                setSelectedRadio(val!);
              },
            ),
            Text('Radio Button 2'),
            Radio(
              value: 3,
              groupValue: selectedRadio,
              onChanged: (val) {
                setSelectedRadio(val!);
              },
            ),
            Text('Radio Button 3'),
          ],
        ),
      ),
    );
  }
}
