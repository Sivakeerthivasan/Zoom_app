import 'package:flutter/material.dart';
import 'package:zoom_clone_tutorial/widgets/custom_button.dart';

class LoginSreen extends StatefulWidget {
  const LoginSreen({super.key});

  @override
  State<LoginSreen> createState() => _LoginSreenState();
}

class _LoginSreenState extends State<LoginSreen> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Start or join a meeting',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 38.0),
            child: Image.asset('assets/images/onboarding.jpg'),
          ),
          CustomButton(text: 'Google Sign In',onPressed: (){
            
          }),
        ],
      ),
    );
  }
}
