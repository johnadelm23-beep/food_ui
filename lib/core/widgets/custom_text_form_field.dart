import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.obsecure = false,
  });
  final String hintText;
  final bool obsecure;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (x) {
        Focus.of(context).unfocus();
      },
      obscureText: widget.obsecure && isPassword,
      decoration: InputDecoration(
        suffixIcon: widget.obsecure && isPassword
            ? InkWell(
                onTap: () {
                  setState(() {
                    isPassword = !isPassword;
                  });
                },
                child: isPassword && widget.obsecure
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
              )
            : null,
        hintText: widget.hintText,
        fillColor: const Color.fromARGB(255, 223, 221, 221),
        filled: true,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: .none,
        ),
      ),
    );
  }
}
