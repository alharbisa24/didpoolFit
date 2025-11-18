import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:ui_tutorial/AppColors.dart';
import 'package:ui_tutorial/onboarding/complete_profile.dart';
import 'package:ui_tutorial/widgets/button.dart';
import 'package:ui_tutorial/widgets/text_gradient.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({super.key});

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.white,
      body: SafeArea(
        child: 
        Center(
          child: 
          Padding(
            padding: EdgeInsets.all(30.0.w),
            child: 
          
          Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           SizedBox(height: 10.h),
            Text("Hey there,",
            style: 
            TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.normal

            ),).animate()
            .fadeIn(duration: 300.ms, curve: Curves.easeInOut),
            Text("Create an Account",
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold
            ),).animate()
            .fadeIn(duration: 400.ms,delay: 200.ms, curve: Curves.easeInOut),
            SizedBox(height: 30.h),

               Input(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your full name';
                  }
                  return null;
                },
                icon: "assets/icons/user.svg",
                placeholder:"Full Name"
              ).animate()
            .fadeIn(duration: 600.ms,delay:100.ms, curve: Curves.easeInOut),
                        SizedBox(height: 15.h),

                      Input(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone';
                  }
                  return null;
                },
                icon: "assets/icons/phone.svg",
                placeholder:"Phone"
              ).animate()
            .fadeIn(duration: 600.ms,delay:100.ms, curve: Curves.easeInOut),
          SizedBox(height: 15.h),

                Input(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                icon: "assets/icons/email.svg",
                placeholder:"Email"
              ).animate()
            .fadeIn(duration: 600.ms,delay:100.ms, curve: Curves.easeInOut),

          SizedBox(height: 15.h),
              
                  Input(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                icon: "assets/icons/password.svg",
                placeholder:"Password",
                isPassword: true,
              ).animate()
            .fadeIn(duration: 600.ms,delay:100.ms, curve: Curves.easeInOut),

              SizedBox(height: 10.h,),
              Row(children: [
                Checkbox(value: false, onChanged: null,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                ),
                Text('By continuing you accept our Privacy Policy and \nTerm of Use',
                style: TextStyle(
                  fontSize: 10.sp,
                  color: Colors.grey[500]
                ),)
              ],).animate()
            .fadeIn(duration: 600.ms,delay:100.ms, curve: Curves.easeInOut),

              SizedBox(height: 30.h),

     Button(onPressed: (){

            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const CompleteProfileWidget(),
              ),
            );
          }, content: Text(
          "Register",
          style: TextStyle(fontSize: 16.sp, color: Colors.white,
          fontWeight: FontWeight.bold),
        ),).animate()
            .fadeIn(duration: 600.ms,delay:100.ms, curve: Curves.easeInOut),

              SizedBox(height: 20.h),

              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey[300],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Text(
                      'Or',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ).animate()
            .fadeIn(duration: 600.ms,delay:100.ms, curve: Curves.easeInOut),

              SizedBox(height: 20.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 7,
                      horizontal: 3
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[200] ?? Colors.grey,
                        width: 2
                      ),
                      borderRadius: BorderRadius.circular(15)
                    ),

                    child: TextButton(onPressed: (){},
                   child: 
                   Container(
  width: 25.w,  
  height: 25.h,
  child: Image.asset(
    "assets/icons/google.png",
    width: 25.w,
    height: 25.h,
    fit: BoxFit.contain,
  ),
)
                   ,
                  ),
                  ),
                  SizedBox(width: 30.w),
                   Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 7,
                      horizontal: 3
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[200] ?? Colors.grey,
                        width: 2
                      ),
                      borderRadius: BorderRadius.circular(15)
                    ),

                    child: TextButton(onPressed: (){},
                   child: 
                   Container(
  width: 25.w,  
  height: 25.h,
  child: Image.asset(
    "assets/icons/facebook.png",
    width: 25.w,
    height: 25.h,
    fit: BoxFit.contain,
  ),
)
                   ,
                   
                ),
                  ),

                ],
              ).animate()
            .fadeIn(duration: 600.ms,delay:100.ms, curve: Curves.easeInOut),

              SizedBox(height: 30.h,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  SizedBox(width: 5.w),

                  GradientText("Login", style: TextStyle(
              fontWeight: FontWeight.normal,
            ),
            gradient: AppGradient.mainGradient
          )
                ],
              ).animate()
            .fadeIn(duration: 600.ms,delay:100.ms, curve: Curves.easeInOut),

          ],
        )
          )
      )
      )
    );
  }
}

class Input extends StatefulWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String icon;
  final String placeholder;
  final bool isPassword;
  const Input({
    Key? key,
    this.controller,
    this.validator,
    required this.icon,
    required this.placeholder,
    this.isPassword = false,
  }) : super(key: key);

  @override
  State<Input> createState() => _InputState();
}


class _InputState extends State<Input> {
  late bool isObsecured;

@override
void initState() {
  super.initState();
  isObsecured = widget.isPassword;  
}

  @override
  Widget build(BuildContext context) {



    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      obscureText: isObsecured,
      decoration: InputDecoration(
prefixIcon: Container(
  width: 24.w, 
  height: 24.h,
  alignment: Alignment.center, 
  child: SvgPicture.asset(
    widget.icon,
    fit: BoxFit.contain,
    width: 15.w,
  ),
),
isCollapsed:false,
isDense: false,

        labelText: widget.placeholder,
        labelStyle: TextStyle(
          color: Color(0xFFC6C4D4),
          fontSize: 12.sp,
        ),
        
        filled: true,
        fillColor: Color(0xFFF7F8F8),
        
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: Color(0xFFF7F8F8),
            width: 0,
          ),
        ),
        
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: Color(0xFFF7F8F8),
            width: 0,
          ),
        ),
        
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1,
          ),
        ),
        suffixIcon: widget.isPassword
            ? InkWell(
              onTap: (){
                  setState(() {
    isObsecured = !isObsecured;

  });
              },
              child:  Container(
                width: 24.w, 
  height: 24.h,
  alignment: Alignment.center, 
              child: HugeIcon(
              size: 24.w,
                color: Color(0xFFC6C4D4),
                 icon: isObsecured ? HugeIcons.strokeRoundedViewOffSlash : HugeIcons.strokeRoundedView,
              ),
            ),
            )
            : null,
        
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: Colors.red,
            width: 2,
          ),
        ),
        
       
      ),
    );
  }
}


