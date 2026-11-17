import 'package:flutter/material.dart';

class CustomSocialRow extends StatelessWidget {
  const CustomSocialRow({super.key});

  @override
  Widget build(BuildContext context) {
    return                             Row(
                              mainAxisAlignment: .spaceEvenly,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    360,
                                  ),
                                  child: CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.blue,
                                    child: Image.asset(
                                      'assets/images/Screenshot 2026-11-18 011642.png',
                                    ),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    360,
                                  ),
                                  child: CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.blue,
                                    child: Image.asset(
                                      'assets/images/Screenshot 2026-11-18 012136.png',
                                    ),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    360,
                                  ),
                                  child: CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.black,
                                    child: Image.asset(
                                      'assets/images/Screenshot 2026-11-18 012202.png',
                                    ),
                                  ),
                                ),
                              ],
                            );
  }
}