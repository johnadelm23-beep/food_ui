import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gdg/core/widgets/custom_app_button.dart';
import 'package:gdg/core/widgets/custom_text_form_field.dart';
import 'package:gdg/features/login/presentation/ui/widgets/check_box_row.dart';
import 'package:gdg/features/login/presentation/ui/widgets/custom_social_row.dart';
import 'package:gdg/features/login/presentation/ui/widgets/custom_top_container.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SizedBox.expand(
        child: Stack(
          children: [
            Positioned(top: 0, right: 0, left: 0, child: CustomTopContainer()),
            Positioned(
              top: 275,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                // width: double.infinity,
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
                      Text('Email'),
                      CustomTextFormField(hintText: 'john@gmail.com'),
                      Text('Password'),
                      CustomTextFormField(hintText: 'Password', obsecure: true),
                     CheckBoxRow(),
                      SizedBox(height: 5),
                      CustomAppButton(text: 'LOG IN', onPressed: () {}),
                      SizedBox(height: 10),
                      Center(
                        child: Column(
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Dont have an account? ',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  TextSpan(
                                    text: 'SIGN UP',
                                    style: TextStyle(color: Colors.deepOrange),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Or',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 20),
                            CustomSocialRow(),
                          ],
                        ),
                      ),
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
