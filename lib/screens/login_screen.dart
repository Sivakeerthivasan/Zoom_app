import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter/widgets.dart';
=======
import 'package:zoom_app/resources/auth_methods.dart';
import 'package:zoom_clone_tutorial/widgets/custom_button.dart';
>>>>>>> 3800b2c (firebase added)

class LoginSreen extends StatefulWidget {
  const LoginSreen({super.key});

  @override
  State<LoginSreen> createState() => _LoginSreenState();
}

class _LoginSreenState extends State<LoginSreen> {
<<<<<<< HEAD
=======
  final AuthMethods _authMethods = AuthMethods();

>>>>>>> 3800b2c (firebase added)
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
<<<<<<< HEAD
          CustomButton(text: 'Google Sign In', onPressed: () {}),
=======
          CustomButton(
            text: 'Google Sign In',
            onPressed: ()async{
              bool res = await _authMethods.signInWithGoogle(context);
              if(res){
                Navigator.pushNamed(context, '/home');
              }
            
          }),
>>>>>>> 3800b2c (firebase added)
        ],
      ),
    );
  }
}
