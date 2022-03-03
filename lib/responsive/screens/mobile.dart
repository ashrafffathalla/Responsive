import 'package:flutter/material.dart';
import 'package:responsive/responsive/adaptive/adaptive_indecator.dart';
import 'package:responsive/responsive/adaptive/constance.dart';
class MobileScreen extends StatelessWidget {
  const MobileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children:
        [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.teal,
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text(
                      'Login with your account',
                      style: Theme.of(context).textTheme.headline4
                  ),
                  const SizedBox(height: 20.0),
                  TextFormField(
                    decoration:const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email Address',
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  TextFormField(
                    decoration:const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  Row(
                    children:
                    [
                      Expanded(
                        child: Container(
                          color: Colors.teal,
                          height: 45,
                          child: MaterialButton(
                            onPressed: (){},

                            child:const Text(
                              'LOGIN',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20.0,),
                      Expanded(
                        child: Container(
                          color: Colors.blue,
                          height: 45,
                          child: MaterialButton(
                            onPressed: (){},

                            child:const Text(
                              'Register',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40.0),
                  Center(
                    child: AdaptiveIndicator(os: getOS(),),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
