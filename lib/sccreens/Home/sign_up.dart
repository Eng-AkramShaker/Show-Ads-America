import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  static String routeName = 'Sign up';
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              const Text(
                'Sign Up',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
              const Text(
                'By signing up you get full access to all of our features, Hurry up!',
                style: TextStyle(fontWeight: FontWeight.w200, fontSize: 30),
              ),
              // this the number text field
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'xxxxxxx',
                  ),
                ),
              ),
              //this is name text field
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Name',
                  ),
                ),
              ),
              //this is Email text field
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Email',
                  ),
                ),
              ),
              // this is password text field
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                  ),
                ),
              ),
              //sign up button
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Sign Up"),
                  )),
                ],
              ),
              // back to sing in page
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('Already have an account?'),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Log in'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
