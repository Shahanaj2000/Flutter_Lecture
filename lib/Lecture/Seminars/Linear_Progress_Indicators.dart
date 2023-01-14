import 'package:flutter/material.dart';


void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LinearProgressIndicators(),
    )
  );
}

class LinearProgressIndicators extends StatefulWidget {
  const LinearProgressIndicators({super.key});

  @override
  State<LinearProgressIndicators> createState() => _LinearProgressIndicatorsState();
}

class _LinearProgressIndicatorsState extends State<LinearProgressIndicators> with TickerProviderStateMixin{
  late AnimationController conroller;
  @override
  void initState() {
    // TODO: implement initState
    conroller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5)
    )..addListener(() { 
      setState(() {
        
      });
     });
     conroller.repeat(reverse: true);
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    conroller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LINEAR PROGRESS INDICATORS"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Linear Progress Indicators", style: TextStyle( fontSize: 30,fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            LinearProgressIndicator(
              value: conroller.value,
              semanticsLabel: 'Linear Progress',
            )
          ],
        ),
      ),
    );
  }
}

