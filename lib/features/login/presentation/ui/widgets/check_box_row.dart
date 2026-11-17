import 'package:flutter/material.dart';

class CheckBoxRow extends StatelessWidget {
  const CheckBoxRow({super.key});

  @override
  Widget build(BuildContext context) {
    return           Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (v) {}),
                              Text(
                                'Remember me',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          Text(
                            'Forget password?',
                            style: TextStyle(color: Colors.deepOrange),
                          ),
                        ],
                      )  ;
  }
}