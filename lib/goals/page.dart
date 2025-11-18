import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_tutorial/AppColors.dart';
import 'package:ui_tutorial/models/card.dart';
import 'package:ui_tutorial/onboarding/Login.dart';
import 'package:ui_tutorial/widgets/button.dart';

class SelectGoalWidget extends StatefulWidget {
  const SelectGoalWidget({super.key});

  @override
  State<SelectGoalWidget> createState() => _SelectGoalWidgetState();
}

class _SelectGoalWidgetState extends State<SelectGoalWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: 
             Center(
          child: 
       
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 12.h,
            ),
                      Text("What is your goal ?",
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold
            ),
            ).animate()
                        .fadeIn(duration: 500.ms,curve: Curves.easeInOut),
            SizedBox(height: 5.h),
            Text("It will help us to choose a best program for you",
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.normal
            ),).animate()
                        .fadeIn(duration: 500.ms, delay:100.ms, curve: Curves.easeInOut),
          SizedBox(height: 50.h),

CardsCarousel(
  cards: [
    CardData(
      svgAsset: "assets/first_card.svg",
      title: "Lean & Tone",
      description: "I’m “skinny fat”. look thin but have no shape. I want to add lean muscle in the right way",
    ),
    CardData(
      svgAsset: "assets/second_card.svg",
      title: "Lose a Fat",
      description: "I have over 20 lbs to lose. I want to drop all this fat and gain muscle mass.",
    ),
    CardData(
      svgAsset: "assets/third_card.svg",
      title: "Improve Shape",
      description: "I have a low amount of body fat and need / want to build more muscle.",
    ),
  ],
).animate()
                        .fadeIn(duration: 700.ms ,curve: Curves.easeInOut),
          SizedBox(height: 10.h),
   NextButton(onPressed: (){

            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const LoginWidget(),
              ),
            );
          },).animate()
                        .fadeIn(duration: 700.ms ,curve: Curves.easeInOut),


          ],
        )),
             )
    );
      
    
  }
}

class NextButton extends StatelessWidget {
  final VoidCallback onPressed;

  const NextButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
       return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 30.w,
          vertical: 10.h
        ),
        child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: AppGradient.logoLinear,
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
      child:  Button(onPressed:onPressed , content: Text(
          "Confirm",
          style: TextStyle(fontSize: 16.sp, color: Colors.white,
          fontWeight: FontWeight.bold),
        ),).animate()
            .fadeIn(duration: 600.ms,delay:100.ms, curve: Curves.easeInOut),
    )
       ));
  }
}

class CardsCarousel extends StatefulWidget {
  final List<CardData> cards;

  const CardsCarousel({
    Key? key,
    required this.cards,
  }) : super(key: key);

  @override
  _CardsCarouselState createState() => _CardsCarouselState();
}

class _CardsCarouselState extends State<CardsCarousel> {
  late final PageController _controller;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(viewportFraction: 0.75);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 520.h,
      child: PageView.builder(
        controller: _controller,
        itemCount: widget.cards.length,
        onPageChanged: (index) {
          setState(() {
            currentPage = index;
          });
        },
        itemBuilder: (context, index) {
          final card = widget.cards[index];
          bool isActive = index == currentPage;

          return AnimatedContainer(
            duration: Duration(milliseconds: 400),
            curve: Curves.easeOut,
            margin: EdgeInsets.symmetric(
              horizontal: 9.w,
              vertical: isActive ? 0 : 25.h,
            ),
            padding: EdgeInsets.symmetric(vertical: isActive ? 0 : 10.h),
            decoration: BoxDecoration(
              gradient: isActive
                  ? AppGradient.purpleLinear
                  : AppGradient.mainGradient,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      card.svgAsset,
                      width: 190.w,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      card.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 1,
                      height: 15.h,
                      indent: 90.w,
                      endIndent: 90.w,
                    ),
                    
                    Text(
                      card.description,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}