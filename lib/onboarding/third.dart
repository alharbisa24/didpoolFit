import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_tutorial/onboarding/forth.dart';

class ThirdOnBoardingScreenWidget extends StatelessWidget {
  const ThirdOnBoardingScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/onboarding1.png",
            
              width: double.maxFinite,
              fit: BoxFit.contain,
            ),
            Positioned(
              left: 60.w,
              top:110.h,
              child:
            Image.asset("assets/onboarding1_man.png",
              
              
              ) )
              ],
            ).animate()
            .fadeIn(duration: 600.ms, curve: Curves.easeInOut),
            SizedBox(height: 20.h),

Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                        Text("Eat Well",
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              
            ),
            ).animate()
            .fadeIn(duration: 600.ms, curve: Curves.easeInOut),
             SizedBox(height: 10.h),
            Text("Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun", 
            style: TextStyle(
              color: Color(0xFFB6B4C2),
              fontSize: 14.sp
            ),).animate()
            .fadeIn(duration: 600.ms,delay: 200.ms, curve: Curves.easeInOut),
       
                ],
              )
              )
),
        Spacer(),
      ArcArrowButton(onPressed: (){

        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForthOnBoardingWidget()));
      },).animate()
            .fadeIn(
              duration: 600.ms,
              delay: 400.ms,
              curve: Curves.easeInOut,
            ),
         ],
        )
      ),
    );
  }
}


class ArcArrowButton extends StatelessWidget {
  const ArcArrowButton({super.key, this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final double outerSize = 60.w; 
    final double buttonSize = 60.w; 
    final double arcThickness = 2.w;

    return Padding(
      padding: EdgeInsets.only(right: 24.w, bottom: 0.h),
      child: Align(
        alignment: Alignment.bottomRight,
        child: SizedBox(
          width: outerSize + arcThickness, 
          height: outerSize + arcThickness,
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
            
             
  Positioned(
  top: -2.h,
  right: -5.w,
  child: CustomPaint(
    size: Size(outerSize + arcThickness * 6, outerSize + arcThickness * 3),
    painter: ArcPainter(
      thickness: arcThickness,
      color: Color(0xFF8A2BE2), 
      startAngle: -1.1 * 3.14159 / 2,
      sweepAngle: 5,
    ),
  ),
),
 Container(
                width: buttonSize,
                height: buttonSize,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF6A4DFF), Color(0xFFCE84FF)],
                  ),
                  shape: BoxShape.circle,
               
                ),
                child: Material(
                  color: Colors.transparent,
                  shape: const CircleBorder(),
                  child: InkWell(
                    customBorder: const CircleBorder(),
                    onTap: onPressed,
                    child: Center(
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 28.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class ArcPainter extends CustomPainter {
  ArcPainter({
    required this.thickness,
    required this.color,
    this.startAngle = -1.0,
    this.sweepAngle = 1.2,
  });

  final double thickness;
  final Color color;
  final double startAngle; 
  final double sweepAngle;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.width / 2) - thickness;

    final rect = Rect.fromCircle(center: center, radius: radius);

    final paint = Paint()
      ..color = color  
      ..style = PaintingStyle.stroke
      ..strokeWidth = thickness
      ..strokeCap = StrokeCap.round
      ..isAntiAlias = true;

    canvas.drawArc(
      rect,
      startAngle,
      sweepAngle,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}