import 'package:flutter/material.dart';
import 'package:for_sale/widgets/buttons/Elevated%20Button.dart';
import 'package:for_sale/widgets/buttons/Text_button.dart';
import 'package:for_sale/widgets/Text_field.dart';
import 'package:for_sale/widgets/coustm%20texts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../sign_up.dart';

class PostAnAdLogin extends StatelessWidget {
  static String routeName = 'Post an adds log in';
  const PostAnAdLogin({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                customText(text: 'Login to post an ad', size: 35, fontweight: FontWeight.bold),
                customText(text: 'Ready to sell?log in and start posting your ads now!', size: 30, fontweight: FontWeight.w200),
                SizedBox(
                  height: width * 0.05,
                ),
                // this the number text field
               IntlPhoneField(
                 decoration: InputDecoration(
                   labelText: 'Phone Number',
                   border: OutlineInputBorder(
                     borderSide: BorderSide(),
                   ),
                 ),
                 initialCountryCode: 'EG',

               ),
                SizedBox(
                  height: width * 0.05,
                ),
                // this is password text field
                textField('Password', false),
                // text forget password
                textButton("Forget your password?", () {}),
                //sign in button
                Row(
                  children: [
                    Expanded(child: elevatedButton("Sign in", () {})),
                  ],
                ),
                //sign up button
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    customText(
                      text: 'Dont have account?',
                      size: 20,
                    ),
                    textButton(
                      "Sign up",
                      () {
                        Navigator.pushNamed(context, SignUp.routeName);
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
