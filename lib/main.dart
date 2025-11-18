import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_tutorial/AppColors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_tutorial/onboarding/first.dart';
import 'package:ui_tutorial/widgets/button.dart';
import 'package:ui_tutorial/widgets/text_gradient.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
    
       ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'First',
      theme: ThemeData(
    textTheme: GoogleFonts.poppinsTextTheme(),
  colorSchemeSeed: Colors.white,
      ),
      home: const OnBoardingPage(),
    ),
        );
  }
}

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.white,

      body:
      SafeArea(
        child: 
       
       Column(
        children: [
 Expanded(
          child: 
       Center(
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

    
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GradientText(
            'DIDPOOL',
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            gradient: AppGradient.mainGradient
          ),
          Text("Fit",
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
          ),)
        
       
      
    
            
          ]
        ).animate()
                .fadeIn(duration: 600.ms, delay: 200.ms)
    .blur(begin: Offset(0, 20)),

    
                Text("Everybody Can Train",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFFB6B4C2)
                ),).animate()
                .fadeIn(duration: 600.ms, delay: 800.ms)

             ],
        ),
       )
 ),
  Padding(
          padding: const EdgeInsets.all(20.0),
          child: Button(onPressed: (){

            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const FirstOnBoardingScreenWidget(),
              ),
            );
          }, content: Text(
          "Get Started",
          style: TextStyle(fontSize: 16.sp, color: Colors.white,
          fontWeight: FontWeight.bold),
        ),)
        ).animate()
                .fadeIn(duration: 600.ms, delay: 1400.ms)
        ],
       ),
      ),
    
    );
  }
}

