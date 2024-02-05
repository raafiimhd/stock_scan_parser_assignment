import 'package:flutter/material.dart';
import 'package:stock_scan_parser_application/domain/core/color/colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.keyboardType,
  }) : super(key: key);

  final TextEditingController controller;
  final TextInputType keyboardType;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      
      width: 140,
      child: TextFormField(
        keyboardType: keyboardType,
        keyboardAppearance: Brightness.dark,
        controller: controller,
        decoration: const InputDecoration(
  
          contentPadding: EdgeInsets.all(6),
          border: OutlineInputBorder(borderSide: BorderSide(
            color: kBlack
          )),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
            color: kBlack
          )
          )
        ),
      ),
    );
  }
}
