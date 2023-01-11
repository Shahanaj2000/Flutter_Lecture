// Changing the value with Switch

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      //useMaterial3: true,
      colorSchemeSeed: const Color(0xff6750a4),
    ),
    home: const LinearProgressWithSwitch(),
  ));
}

class LinearProgressWithSwitch extends StatefulWidget {
  const LinearProgressWithSwitch({super.key});

  @override
  State<LinearProgressWithSwitch> createState() =>
      _LinearProgressWithSwitchState();
}

class _LinearProgressWithSwitchState extends State<LinearProgressWithSwitch>
    with TickerProviderStateMixin {
  late AnimationController controller; //? For the animation Line
  //? To Use Switch
  bool determine = false;

  @override
  void initState() {
    // TODO: implement initState
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..addListener(() {
            setState(() {});
          });
          controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LINEAR INDICATOR - SWITCH"),
        centerTitle: true,
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Linear Indicator With Switch",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            LinearProgressIndicator(
              value: controller.value,
              semanticsLabel: 'Linear Progress Indicator',
              backgroundColor: Colors.red,
              //semanticsValue: 'Helo',
              minHeight: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Expanded(
                  child:  Text(
                    "determine Mode",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Switch(
                  value: determine,
                  onChanged: (bool value) {
                    setState(() {
                      determine = value;
                      if (determine) {
                        controller.stop();
                      } else {
                        controller
                          ..forward(from: controller.value)
                          ..repeat();
                      }
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
