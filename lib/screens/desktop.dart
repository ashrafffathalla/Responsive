import 'package:flutter/material.dart';
class DesktopScreen extends StatelessWidget {
  const DesktopScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children:
        [
          Expanded(
            child: Container(
              height: double.infinity,
              color: Colors.teal,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children:
                [
                  TextFormField(
                    decoration:const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email Adress',
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  TextFormField(
                    decoration:const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
