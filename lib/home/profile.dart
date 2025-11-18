import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:ui_tutorial/AppColors.dart';
import 'package:ui_tutorial/widgets/text_gradient.dart';

class ProfileHomeWidget extends StatefulWidget {
  const ProfileHomeWidget({super.key});

  @override
  State<ProfileHomeWidget> createState() => _ProfileHomeWidgetState();
}

class _ProfileHomeWidgetState extends State<ProfileHomeWidget> {
    bool notificationBool = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: 
      SingleChildScrollView(
    child: 
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20.h,
            horizontal: 30.w
          ),
          child: 
        Center(

        child: 
        Column(
          children: [
            Text(
                  'Profile',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),


                SizedBox(
                  height: 35.h,

                ),

                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                               Container(
                        padding: EdgeInsets.all(10.w),
                        decoration: BoxDecoration(
                          gradient: AppGradient.shade(AppGradient.greenLinear, 0.2),
                          borderRadius: BorderRadius.circular(100.r),
                        ),
                        child: Image.asset(
                          "assets/user.png",
                          width: 40.h,
                        )
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Masi Ramezanzade",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black
                          ),),
                          Text("Lose a Fat Program",
                           style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFFB6B4C2)
                          ),)
                        ],
                      ),

                          SizedBox(
                        width: 24.w,
                      ),
                            Container(
                    decoration: BoxDecoration(
                      gradient:AppGradient.logoLinear,
                      borderRadius: BorderRadius.circular(50.r),
                    ),
                    child: Container(
                      child: Text(
                      "Edit",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 8.h,
                        horizontal: 25.w,
                      ),
                      color: Colors.transparent,

                      ),
                    ),
                        ],
                      ).animate()
                        .fadeIn(duration: 400.ms,curve: Curves.easeInOut),

SizedBox(
  height: 23.h,
),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Container(
                           width: 90.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                16.r
                              ),
                              boxShadow: [
                                BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                blurRadius: 15,
                                offset: Offset(0, 1),
                              )
                              ]
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 10.h,
                              horizontal: 15.w
                            ),
                            child: Column(
                              children: [
                GradientText("180cm ",
                 style: TextStyle(
                  fontSize: 18.sp,
              fontWeight: FontWeight.w500,
                                 ),
             gradient: AppGradient.purpleLinear

                                 ),
                                Text("Height",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFFB6B4C2)
                                ),)
                              ],
                            ),
                          ).animate()
                        .fadeIn(duration: 500.ms, curve: Curves.easeInOut),
                          SizedBox(
                            width: 15.w,
                          ),

                          Container(
                            width: 90.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                16.r
                              ),
                              boxShadow: [
                                BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                blurRadius: 15,
                                offset: Offset(0, 1),
                              )
                              ]
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 10.h,
                              horizontal: 15.w
                            ),
                            child: Column(
                              children: [
                GradientText("65kg ",
                 style: TextStyle(
                  fontSize: 18.sp,
              fontWeight: FontWeight.w500,
                                 ),
             gradient: AppGradient.purpleLinear

                                 ),
                                Text("Weight",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFFB6B4C2)
                                ),)
                              ],
                            ),
                          ).animate()
                        .fadeIn(duration: 500.ms, delay: 50.ms,curve: Curves.easeInOut),
                               SizedBox(
                            width: 15.w,
                          ),

                          Container(
                            width: 90.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                16.r
                              ),
                              boxShadow: [
                                BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                blurRadius: 15,
                                offset: Offset(0, 1),
                              )
                              ]
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 10.h,
                              horizontal: 15.w
                            ),
                            child: Column(
                              children: [
                GradientText("22y ",
                 style: TextStyle(
                  fontSize: 18.sp,
              fontWeight: FontWeight.w500,
                                 ),
             gradient: AppGradient.purpleLinear

                                 ),
                                Text("Age",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFFB6B4C2)
                                ),)
                              ],
                            ),
                          ).animate()
                        .fadeIn(duration: 500.ms, delay: 100.ms,curve: Curves.easeInOut),
                         
                      ],),
                    ],
                  ),
                ),
           SizedBox(
            height: 30.h,

           ),

           Container(
                decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                16.r
                              ),
                              boxShadow: [
                                BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                blurRadius: 15,
                                offset: Offset(0, 1),
                              )
                              ]
                            ),
                            padding: EdgeInsets.all(
                              20
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Account",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w800,
                                ),
                                textAlign: TextAlign.left,),

                                SizedBox(
                                  height: 16.h,
                                ),

                               InkWell(
                                onTap: (){

                                },
                                child:  Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                     Row(
                                      children: [
                                    ShaderMask(
  shaderCallback: (bounds) => AppGradient.greenLinear.createShader(
    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
  ),
  child: HugeIcon(
    icon: HugeIcons.strokeRoundedUser03,
    size: 20.sp,
    color: Colors.white,
  ),
),

                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      
                                     Text("Personal Data",
                                     style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey[500]
                                     ),),
                                      ],
                                     ),

                                     HugeIcon(icon: HugeIcons.strokeRoundedArrowRight01,
                                     color: Colors.grey
                                     ,)
                                    ],
                                  ),
                                ),
                               ),
                                SizedBox(
                                  height: 10.h,
                                ),

   InkWell(
                                onTap: (){
                                  
                                },
                                child:
Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                     Row(
                                      children: [
                                    ShaderMask(
  shaderCallback: (bounds) => AppGradient.greenLinear.createShader(
    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
  ),
  child: HugeIcon(
    icon: HugeIcons.strokeRoundedStarAward01,
    size: 20.sp,
    color: Colors.white,
  ),
),

                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      
                                     Text("Achievement",
                                     style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey[500]
                                     ),),
                                      ],
                                     ),

                                     HugeIcon(icon: HugeIcons.strokeRoundedArrowRight01,
                                     color: Colors.grey
                                     ,)
                                    ],
                                  ),
                                ),
   ), 
            
                                SizedBox(
                                  height: 10.h,
                                ),

   InkWell(
                                onTap: (){
                                  
                                },
                                child:
Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                     Row(
                                      children: [
                                    ShaderMask(
  shaderCallback: (bounds) => AppGradient.greenLinear.createShader(
    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
  ),
  child: HugeIcon(
    icon: HugeIcons.strokeRoundedChart03,
    size: 20.sp,
    color: Colors.white,
  ),
),

                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      
                                     Text("Activity History",
                                     style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey[500]
                                     ),),
                                      ],
                                     ),

                                     HugeIcon(icon: HugeIcons.strokeRoundedArrowRight01,
                                     color: Colors.grey
                                     ,)
                                    ],
                                  ),
                                ),
   ),
   
                                SizedBox(
                                  height: 10.h,
                                ),

   InkWell(
                                onTap: (){
                                  
                                },
                                child:
Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                     Row(
                                      children: [
                                    ShaderMask(
  shaderCallback: (bounds) => AppGradient.greenLinear.createShader(
    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
  ),
  child: HugeIcon(
    icon: HugeIcons.strokeRoundedProgress02,
    size: 20.sp,
    color: Colors.white,
  ),
),

                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      
                                     Text("Workout Progress",
                                     style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey[500]
                                     ),),
                                      ],
                                     ),

                                     HugeIcon(icon: HugeIcons.strokeRoundedArrowRight01,
                                     color: Colors.grey
                                     ,)
                                    ],
                                  ),
                                ),
   ),
 
                                SizedBox(
                                  height: 10.h,
                                ),

                              ],
                            ),
           ).animate()
                        .fadeIn(duration: 600.ms, curve: Curves.easeInOut),           


SizedBox(
            height: 30.h,

           ),

           Container(
                decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                16.r
                              ),
                              boxShadow: [
                                BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                blurRadius: 15,
                                offset: Offset(0, 1),
                              )
                              ]
                            ),
                            padding: EdgeInsets.all(
                              20
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Notifications",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w800,
                                ),
                                textAlign: TextAlign.left,),

                                SizedBox(
                                  height: 16.h,
                                ),

                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                     Row(
                                      children: [
                                    ShaderMask(
  shaderCallback: (bounds) => AppGradient.greenLinear.createShader(
    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
  ),
  child: HugeIcon(
    icon: HugeIcons.strokeRoundedNotification01,
    size: 20.sp,
    color: Colors.white,
  ),
),

                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      
                                     Text("Pop-Up Notifications",
                                     style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey[500]
                                     ),),
                                      ],
                                     ),

                                       GradientToggleSwitch(
        value: notificationBool,  
        onChanged: (val) {
          setState(() {
            notificationBool = val;
          });

        },
      ),
                                    ],
                                  ),
                                ),
                  
                                SizedBox(
                                  height: 10.h,
                                ),

                              ],
                            ),
           ).animate()
                        .fadeIn(duration: 700.ms,curve: Curves.easeInOut),
           SizedBox(
            height: 30.h,
           ),
                      Container(
                decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                16.r
                              ),
                              boxShadow: [
                                BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                blurRadius: 15,
                                offset: Offset(0, 1),
                              )
                              ]
                            ),
                            padding: EdgeInsets.all(
                              20
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Other",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w800,
                                ),
                                textAlign: TextAlign.left,),

                                SizedBox(
                                  height: 16.h,
                                ),

                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                     Row(
                                      children: [
                                    ShaderMask(
  shaderCallback: (bounds) => AppGradient.greenLinear.createShader(
    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
  ),
  child: HugeIcon(
    icon: HugeIcons.strokeRoundedMail02,
    size: 20.sp,
    color: Colors.white,
  ),
),

                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      
                                     Text("Contact Us",
                                     style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey[500]
                                     ),),
                                      ],
                                     ),

                                     HugeIcon(icon: HugeIcons.strokeRoundedArrowRight01,
                                     color: Colors.grey
                                     ,)
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),

Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                     Row(
                                      children: [
                                    ShaderMask(
  shaderCallback: (bounds) => AppGradient.greenLinear.createShader(
    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
  ),
  child: HugeIcon(
    icon: HugeIcons.strokeRoundedShield02,
    size: 20.sp,
    color: Colors.white,
  ),
),

                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      
                                     Text("Privacy Policy",
                                     style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey[500]
                                     ),),
                                      ],
                                     ),

                                     HugeIcon(icon: HugeIcons.strokeRoundedArrowRight01,
                                     color: Colors.grey
                                     ,)
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),

Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                     Row(
                                      children: [
                                    ShaderMask(
  shaderCallback: (bounds) => AppGradient.greenLinear.createShader(
    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
  ),
  child: HugeIcon(
    icon: HugeIcons.strokeRoundedSettings02,
    size: 20.sp,
    color: Colors.white,
  ),
),

                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      
                                     Text("Settings",
                                     style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey[500]
                                     ),),
                                      ],
                                     ),

                                     HugeIcon(icon: HugeIcons.strokeRoundedArrowRight01,
                                     color: Colors.grey
                                     ,)
                                    ],
                                  ),
                                ),
                             SizedBox(
                                  height: 10.h,
                                ),

                              ],
                            ),
           ).animate()
                        .fadeIn(duration: 800.ms,curve: Curves.easeInOut),           


          ]
        )
        )
        )
      ));
  }
}



class GradientToggleSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const GradientToggleSwitch({required this.value, required this.onChanged, Key? key}) : super(key: key);

  @override
  _GradientToggleSwitchState createState() => _GradientToggleSwitchState();
}
class _GradientToggleSwitchState extends State<GradientToggleSwitch>
    with SingleTickerProviderStateMixin {

  late final AnimationController _controller;
  late final Animation<double> _anim;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: 250.ms,
      value: widget.value ? 1 : 0,
    );

    _anim = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void didUpdateWidget(covariant GradientToggleSwitch oldWidget) {
    super.didUpdateWidget(oldWidget);

    widget.value ? _controller.forward() : _controller.reverse();
  }

  void _toggle() => widget.onChanged(!widget.value);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggle,
      child: SizedBox(
        width: 50.w,
        height: 30.h,
        child: Stack(
          children: [
            AnimatedBuilder(
              animation: _anim,
              builder: (_, __) {
                final isOn = _anim.value > 0.5;

                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: isOn ? null : Colors.white,
                    gradient: isOn ? AppGradient.greenLinear : null,
                    border: Border.all(
                      color: isOn ? Colors.transparent : Colors.grey.shade300,
                      width: 1.5,
                    ),
                  ),
                );
              },
            ),

            AnimatedBuilder(
              animation: _anim,
              builder: (_, child) {
                return Positioned(
                  left: lerpDouble(4.w, 26.w, _anim.value)!,
                  top: 4.h,
                  child: child!,
                );
              },
              child: Container(
                width: 22.w,
                height: 22.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 3,
                      offset: Offset(0, 2),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
