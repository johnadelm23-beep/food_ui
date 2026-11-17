import 'package:flutter/material.dart';

class CustomAppButton extends StatelessWidget {
  const CustomAppButton({super.key, required this.text, this.onPressed});
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepOrange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
        minimumSize: Size(double.infinity, 60),
      ),
      onPressed: onPressed,
      child: Text(
       text,
        style: TextStyle(fontWeight: .bold, color: Colors.white, fontSize: 25),
      ),
    );
  }
}
