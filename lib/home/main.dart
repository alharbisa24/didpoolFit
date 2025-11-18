import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_tutorial/AppColors.dart';
import 'package:ui_tutorial/home/notifications.dart';
import 'package:ui_tutorial/widgets/text_gradient.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
      SingleChildScrollView(
        child: 
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20.h,
            horizontal: 30.w
          ),
          child: 
        
        Column(
          children: [
            Row(
              children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                  Text("Welcome Back,",
                  style:
                   TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.normal,
                  
                  ),
                  textAlign: TextAlign.start,
                  ),
                  Text("Masi Ramezanzade",  
                  style:
                   TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  
                  ),
                  textAlign: TextAlign.start,),
                ],
              ).animate()
                        .fadeIn(duration: 400.ms ,curve: Curves.easeInOut)

              ,Spacer(),

              InkWell(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => NotificationsHomeWidget())
                  );
                },
                child: Container(
              child: 
              Padding(
                padding: EdgeInsets.all(11.0),
                child: SvgPicture.asset(
                "assets/icons/notification.svg",
                width: 20.w,
              ),
              ),
              
              decoration: BoxDecoration(
          
                color: Colors.grey[50],

                  borderRadius: BorderRadius.circular(10.r)
                
              ),
              ),
              ).animate()
                        .fadeIn(duration: 400.ms ,curve: Curves.easeInOut).shimmer()
            ]
            ,),
            SizedBox(height:30.h),


            Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(22.r),
    gradient: AppGradient.purpleLinear,
    image: DecorationImage(
      image: AssetImage("assets/home_dots.png"),
      fit: BoxFit.contain,
      alignment: Alignment.topLeft,
    ),
  ),
  child: Padding(
    padding: EdgeInsets.symmetric(
      vertical: 18.h,
      horizontal: 20.w,
    ),
    child: Column(
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "BMI (Body Mass Index)",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "You have a normal weight",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 15.h),
                
                  
                    Container(
                    decoration: BoxDecoration(
                      gradient:AppGradient.logoLinear,
                      borderRadius: BorderRadius.circular(50.r),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                      "View more",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        vertical: 5.h,
                        horizontal: 21.w,
                      ),
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.r),
                      ),
                      ),
                    ),
                    ),
                
              ],
            ),

          
SizedBox(
  width: 110.w,   
  height: 115.h, 
  child: FittedBox(
    fit: BoxFit.contain,
    child: Image.asset("assets/home_chart.png"),
  ),
)
          ],
        ),
      ],
    ),
  ),
).animate()
                        .fadeIn(duration: 600.ms ,curve: Curves.easeInOut).shimmer(),
SizedBox(
  height: 30.h,
),


Container(
  decoration: BoxDecoration(
    color: Color(0xFFEEA4CE).withOpacity(0.4),
    borderRadius: BorderRadius.circular(16.r)
  ),
  child:Padding(padding: 
  EdgeInsets.symmetric(
vertical: 11.h,
horizontal: 20.w
  ),
  child:  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [  
    Text("Today Target"),
   
                    Container(
                    decoration: BoxDecoration(
                      gradient:AppGradient.logoLinear,
                      borderRadius: BorderRadius.circular(50.r),
                    ),
                    child: Container(
                      child: Text(
                      "Check",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 12.h,
                        horizontal: 25.w,
                      ),
                      color: Colors.transparent,

                      ),
                    ),
                    
  ],),)
).animate()
                        .fadeIn(duration: 600.ms, delay:50.ms ,curve: Curves.easeInOut).shimmer(),

SizedBox(
  height: 30.h,
),

SizedBox(
  width: double.infinity,
  child: Text("Activity Status",
style: TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w900,
  fontSize: 16.sp,
),
textAlign: TextAlign.start,
)
).animate()
                        .fadeIn(duration: 600.ms, delay:100.ms ,curve: Curves.easeInOut).shimmer(),
SizedBox(
  height: 15.h,
),



            Container(
              width: double.infinity,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(22.r),
    color: Color(0xFFEEA4CE).withOpacity(0.4),
  ),
  child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

      children: [
     
      Padding(
    padding: EdgeInsets.symmetric(
      vertical: 18.h,
      horizontal: 20.w,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
                  "Heart Rate",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
             GradientText("78 BPM", style: TextStyle(
              fontWeight: FontWeight.normal,
            ),
            gradient: AppGradient.purpleLinear
          ),


         
      ],
    )
  ),
   Padding(
  padding: EdgeInsets.only(bottom: 10),
  child: Stack(
    clipBehavior: Clip.none, 
    children: [
      Image.asset(
        "assets/home_heart_rate.png",
        fit: BoxFit.contain,
      ),

      Positioned(
        right:61,  
        bottom: 32, 
        child: Image.asset(
          "assets/heart_rate_badge.png",
        ),
      ),
    ],
  ),
),

                SizedBox(height: 15.h),
                
                
              ],
            ),


        
      
    
  ).animate()
                        .fadeIn(duration: 600.ms, delay:100.ms ,curve: Curves.easeInOut).shimmer(),

SizedBox(
  height: 30.h,
),


Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(15.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 120.h,
                width: 30.w,
                child: ProgressBar(value: 0.35),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Water Intake",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    GradientText(
                      "4 Liters",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 14.sp,
                      ),
                      gradient: AppGradient.purpleLinear,
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "Real time updates",
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ).animate()
                        .fadeIn(duration: 600.ms, delay:150.ms ,curve: Curves.easeInOut).shimmer(),
    SizedBox(width: 15.w),
    Expanded(
  child: Container(
    decoration: BoxDecoration(
      color: Colors.grey.withOpacity(0.1),
      borderRadius: BorderRadius.circular(16.r),
    ),
    child: Padding(
      padding: EdgeInsets.all(15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sleep",
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 5.h),
          GradientText(
            "8h 20m",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 14.sp,
            ),
            gradient: AppGradient.purpleLinear,
          ),

          SvgPicture.asset("assets/sleep_image.svg",
          width: 120.w
          ,)
        ],
      ),
    ),
  ),
).animate()
                        .fadeIn(duration: 600.ms, delay:50.ms ,curve: Curves.easeInOut).shimmer(),

  ],
)
        
          ],
        ),
      )),

    
    );
  }
}



class ProgressBar extends StatelessWidget {
  final double value; 

  const ProgressBar({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        gradient: LinearGradient(
          colors: [
            Colors.grey.withOpacity(0.2),
            Colors.pink.withOpacity(0.05),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 600),
            curve: Curves.easeInOut,
            height: (160.h) * value,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.r),
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFF7EB3), 
                  Color(0xFFFFB5D8),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.r),
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.15),
                  Colors.white.withOpacity(0.05),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

         
        ],
      ),
    );
  }
}
