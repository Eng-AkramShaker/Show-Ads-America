// ignore_for_file: unnecessary_import, unused_import, library_private_types_in_public_api, use_full_hex_values_for_flutter_colors, avoid_print, use_build_context_synchronously, unused_local_variable, duplicate_ignore

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:for_sale/constes/ColorManager.dart';
import 'package:for_sale/controller/home_controller.dart';
import 'package:for_sale/sccreens/Home/My_Home.dart';
import 'package:for_sale/sccreens/Home/tabs/Home.dart';
import 'package:for_sale/sccreens/auth/register.dart';
import 'package:for_sale/widgets/Snack_Bar.dart';
import 'package:for_sale/widgets/buttons/rounded_btn.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  static String routeName = 'login';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool showSpinner = false;
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    final ctrl = Provider.of<HomeController>(context, listen: false);

    return ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: const Color(0xff251F34),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(width: 210, height: 210, child: SvgPicture.asset('assets/images/login.svg')),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 20, 8),
                  child: Text(
                    'Login',
                    style: TextStyle(color: ColorManager.whiteColor, fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Please sign in to continue.',
                    style: TextStyle(color: ColorManager.greyColor, fontWeight: FontWeight.w400, fontSize: 13),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'E-mail',
                          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13, color: ColorManager.whiteColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          style: (const TextStyle(color: ColorManager.whiteColor, fontWeight: FontWeight.w400)),
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: ColorManager.whiteColor,
                          obscureText: false,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            fillColor: ColorManager.darkColor,
                            filled: true,
                            prefixIcon: Image.asset('assets/images/icon_email.png'),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: ColorManager.primary),
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            ),
                          ),
                          onChanged: (value) {
                            email = value;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Password',
                        style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        style: (const TextStyle(color: ColorManager.whiteColor, fontWeight: FontWeight.w400)),
                        obscureText: true,
                        cursorColor: ColorManager.whiteColor,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: ColorManager.darkColor,
                          filled: true,
                          prefixIcon: Image.asset('assets/images/icon_lock.png'),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: ColorManager.primary, width: 2.0),
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          ),
                        ),
                        onChanged: (value) {
                          password = value;
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: RoundedButton(
                      btnText: 'LOGIN',
                      color: ColorManager.primary,
                      onPressed: () async {
                        // Add login code
                        setState(() {
                          showSpinner = true;
                        });
                        try {
                          await ctrl.auth.signInWithEmailAndPassword(email: email!, password: password!);
                          // ignore: use_build_context_synchronously
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHome()));

                          Snak_Bar(context, "Successfully");
                          setState(() {
                            showSpinner = false;
                          });
                        } catch (e) {
                          setState(() {
                            showSpinner = false;
                          });
                          Snak_Bar(context, "Verify your Email and Password");

                          print(e);
                        }
                      },
                    ),
                  ),
                ),
                const Center(
                  child: Text('Forgot Password?', style: TextStyle(color: ColorManager.primary)),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Dont have an account ?',
                      style: TextStyle(color: ColorManager.greyColor, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Register()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ).copyWith(
                        overlayColor: const MaterialStatePropertyAll(Colors.white),
                        // side: MaterialStatePropertyAll(
                        //   BorderSide(color: Colors.blue, width: 1.3),
                        // ),
                        backgroundColor: MaterialStateProperty.resolveWith((states) {
                          return ColorManager.primary;
                        }),
                      ),
                      child: const Text('Sign up',
                          style: TextStyle(
                            color: Colors.black,
                          )),
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
