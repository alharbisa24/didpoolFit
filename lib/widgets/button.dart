
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_tutorial/AppColors.dart';

class Button extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget content;

  const Button({super.key, required this.onPressed, required this.content});

  @override
  Widget build(BuildContext context) {
       return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: AppGradient.mainGradient,
        borderRadius: BorderRadius.circular(99),
      ),
       child: SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          padding: EdgeInsets.symmetric(vertical: 13.h),
        ),
        child:content
      ),
    )
       );
  }
}