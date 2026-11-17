import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTopContainer extends StatelessWidget {
  const CustomTopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                // width: double.infinity,
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
                      right: 0,
                      child: SvgPicture.asset(
                        "assets/icons/Vector 142.svg",
                        color: Colors.white,
                      ),
                    ),

                    Center(
                      child: Column(
                        mainAxisAlignment: .center,
                        children: [
                          Text(
                            "Log in",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: .bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Please Sign in your to Existion account",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
  }
}