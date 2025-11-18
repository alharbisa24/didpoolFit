import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:ui_tutorial/AppColors.dart';
import 'package:ui_tutorial/home/home.dart';
import 'package:ui_tutorial/widgets/button.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          bottom: 30.h,
          left: 20.w,
          right: 20.w,
        ),
        child: GoButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HomeWidget(),
              ),
            );
          },
        ),
      ).animate()
                .fadeIn(duration: 600.ms, delay: 200.ms)
    .blur(begin: Offset(0, 20)),

      body: SafeArea(
        child: 
        Center(
          child: 
        Padding(padding: 
        EdgeInsets.symmetric(
          vertical: 100.h
        ),
        
        child: 
        
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/welcome.svg').animate()
                .fadeIn(duration: 600.ms, delay: 200.ms)
    .blur(begin: Offset(0, 20)),

            SizedBox(height: 44.h),
               Text("Welcome, Stefani",
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold
            ),).animate()
                        .fadeIn(duration: 600.ms ,curve: Curves.easeInOut),
            SizedBox(height: 5.h),
            Text("You are all set now, let’s reach your \ngoals together with us",
            style: 
            TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.normal,
              

            ),
            textAlign: TextAlign.center,)
            .animate()
                        .fadeIn(duration: 600.ms, delay: 100.ms,curve: Curves.easeInOut),

         
                      ],
        )),
      )
    )
    );
  }
}

class GoButton extends StatelessWidget {
  final VoidCallback onPressed;

  const GoButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
       return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: AppGradient.mainGradient,
        borderRadius: BorderRadius.circular(99),

    boxShadow: [
      BoxShadow(
        color: Colors.blue.withOpacity(0.1),  
        offset: Offset(0, 4),                  
        blurRadius: 10,                        
        spreadRadius: 1,                
      ),
    ],      ),
       child: SizedBox(
      width: double.infinity,
      child:   Button(onPressed: onPressed, content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 10.w),
            Text(
                'Go To Home',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              HugeIcon(icon: HugeIcons.strokeRoundedArrowRight01, size: 20.w, color: Colors.white,),

            
          ],
        ),).animate()
                        .fadeIn(duration: 700.ms, delay: 100.ms ,curve: Curves.easeInOut),
    )
       );
  }
}