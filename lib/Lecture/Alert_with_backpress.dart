import 'package:flutter/material.dart';
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AlertBackPress(),
  ));
}



class AlertBackPress extends StatelessWidget {
  const AlertBackPress({super.key});

  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert() async {
      return await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Alert!"),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                   child: const Text('Yes'),
                  ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: const Text('No'),
                ),
              ],
            );
          });
    }

    return WillPopScope(
      onWillPop: showAlert,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Alert"),
        ),
        body: const Center(
          child: Text("Alert Press Back"),
        ),
      ),
    );
  }
}
