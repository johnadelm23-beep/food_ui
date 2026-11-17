import 'package:flutter/material.dart';

class CustomTextRich extends StatelessWidget {
  const CustomTextRich({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text.rich(
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
                            );
  }
}