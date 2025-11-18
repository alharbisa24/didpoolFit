import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:ui_tutorial/AppColors.dart';
import 'package:ui_tutorial/home/main.dart';
import 'package:ui_tutorial/home/profile.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
   int selectedIndex = 0;


  @override
  Widget build(BuildContext context) {

  final List<Widget> pages = [
    MainHomePage(),
    MainHomePage(),
    MainHomePage(),
    MainHomePage(),
    ProfileHomeWidget(),
  ];


    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[selectedIndex], 
 bottomNavigationBar: BottomBar(
        currentIndex: selectedIndex,
        onItemSelected: (i) {
          setState(() {
            selectedIndex = i;
          });
        },
      ),
      );

    

  }
}


class BottomBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onItemSelected;

  const BottomBar({
    super.key,
    required this.currentIndex,
    required this.onItemSelected,
  });

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: Offset(0, -5),
          ),
        ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(
                icon: HugeIcons.strokeRoundedHome09,
                index: 0,
              ),
              _buildNavItem(
                icon: HugeIcons.strokeRoundedChart03,
                index: 1,
              ),
              SizedBox(width: 60.w), 
              _buildNavItem(
                icon: HugeIcons.strokeRoundedCamera01,
                index: 3,
              ),
              _buildNavItem(
                icon: HugeIcons.strokeRoundedUser03,
                index: 4,
              ),
            ],
          ),
          Positioned(
            top: -20.h,
            left: 0,
            right: 0,
            child: Center(
              child: GestureDetector(
                              onTap: () => widget.onItemSelected(2),

                child: Container(
                  width: 60.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: AppGradient.mainGradient,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.3),
                        blurRadius: 15,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 30.sp,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required List<List<dynamic>> icon,
    required int index,
  }) {
    final isSelected = widget.currentIndex == index;
    
    return GestureDetector(
    onTap: () {
  widget.onItemSelected(index); 
  setState(() {
    _selectedIndex = index;
  });

      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
        ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: isSelected 
            ? AppGradient.purpleLinear.colors
            : [Colors.grey, Colors.grey],
          ).createShader(bounds),
          child: HugeIcon(
            icon: icon,
            size: 24.sp,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 4.h),
        if (isSelected)
          Container(
            width: 5.w,
            height: 5.h,
            decoration: BoxDecoration(
          gradient: AppGradient.purpleLinear,
          shape: BoxShape.circle,
            ),
          ),
          ],
        ),
      ),
    );
  }
}


