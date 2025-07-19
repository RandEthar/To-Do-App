import 'package:flutter/material.dart';


class TextFormFieldApp extends StatelessWidget {
  const TextFormFieldApp({super.key, required this.hintText, this.suffixIcon, this.controller, this.readOnly});
final String hintText;
 final Widget? suffixIcon;
 final TextEditingController? controller;
final  bool ?readOnly;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly:readOnly??false ,
      controller:controller ,
      decoration: InputDecoration(
        
     hintText: hintText,
     suffixIcon: suffixIcon,
    
        
      ),
    );
  }

}