import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:ui_tutorial/AppColors.dart';

class NotificationsHomeWidget extends StatefulWidget {
  const NotificationsHomeWidget({super.key});


  @override
  State<NotificationsHomeWidget> createState() => _NotificationsHomeWidgetState();
}

class _NotificationsHomeWidgetState extends State<NotificationsHomeWidget> {
  bool _loading = true;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: 
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                 InkWell(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child: Container(
              child: 
              Padding(
                padding: EdgeInsets.all(11.0),
                child: HugeIcon(icon: HugeIcons.strokeRoundedArrowLeft01)
              ),
              
              decoration: BoxDecoration(
          
                color: Colors.grey[50],

                  borderRadius: BorderRadius.circular(10.r)
                
              ),
              ),
              ),
Text(
                  'Notification',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                   InkWell(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child: Container(
              child: 
              Padding(
                padding: EdgeInsets.all(11.0),
                child: HugeIcon(icon: HugeIcons.strokeRoundedMoreHorizontalSquare01)
              ),
              
              decoration: BoxDecoration(
          
                color: Colors.grey[50],

                  borderRadius: BorderRadius.circular(10.r)
                
              ),
              ),
              ),

                ],
              ),
             SizedBox(height: 20.h),
         Skeletonizer(
  enabled: _loading,
          enableSwitchAnimation: true,

  child:     
ListView.builder(
  shrinkWrap: true,
  physics: NeverScrollableScrollPhysics(),
  itemCount: 10,
  itemBuilder: (context, index) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Row(
            children: [
              Container(
                        padding: EdgeInsets.all(10.w),
                        decoration: BoxDecoration(
                          gradient: AppGradient.shade(AppGradient.greenLinear, 0.2),
                          borderRadius: BorderRadius.circular(100.r),
                        ),
                        child: HugeIcon(
                          icon: HugeIcons.strokeRoundedNotification03,
                          color: Colors.blue,
                          size: 24.sp,
                        ),
                      ),
                      
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                 Text( 'Notification Title',
                  style: TextStyle( 
                    fontSize: 14.sp, 
                    fontWeight: FontWeight.bold, 
                    ), 
                    ),
                    SizedBox(height: 4.h),
                   Text( 
                    'About 2 hours ago',
                     style: TextStyle( 
                      fontSize: 10.sp,
                       color: Colors.grey[600],
                        fontWeight: FontWeight.normal 
                        ), )
                        ,
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                },
                child: HugeIcon(icon: 
                HugeIcons.strokeRoundedMoreVertical)
              ),
            ],
          ),
        ),
        Divider(height: 1, color: Colors.grey[300]),
      ],
    );
  },
)
         )


            ],
          ),
             )
        )
        ),
    );
  }
}