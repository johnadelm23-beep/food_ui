import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gdg/core/widgets/custom_app_button.dart';
import 'package:gdg/core/widgets/custom_text_form_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 300,
                color: Color(0xff121223),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      child: SvgPicture.asset(
                        'assets/icons/Ellipse 1005.svg',
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 30,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: Center(
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: SvgPicture.asset(
                        'assets/icons/Vector 142.svg',
                        color: Colors.white,
                      ),
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: .center,
                        children: [
                          Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: .bold,
                            ),
                          ),
                          Text(
                            'Please Sign Up to get started',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 275,
              left: 0,
              right: 0,
              bottom: 0,

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: .start,
                    spacing: 10,
                    children: [
                      Text("Name"),
                      CustomTextFormField(hintText: "John Adel"),
                      Text("Email"),
                      CustomTextFormField(hintText: 'john@gmail.com'),
                      Text("Password"),
                      CustomTextFormField(hintText: 'password', obsecure: true),
                      Text('Confirm password'),
                      CustomTextFormField(
                        hintText: 'confirm password',
                        obsecure: true,
                      ),
                      SizedBox(height: 10),
                      CustomAppButton(text: 'SIGN UP', onPressed: () {}),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
