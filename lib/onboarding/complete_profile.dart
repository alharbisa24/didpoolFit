import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:ui_tutorial/AppColors.dart';
import 'package:ui_tutorial/goals/page.dart';
import 'package:ui_tutorial/widgets/button.dart';

class CompleteProfileWidget extends StatefulWidget {
  const CompleteProfileWidget({super.key});

  @override
  State<CompleteProfileWidget> createState() => _CompleteProfileWidgetState();
}

class _CompleteProfileWidgetState extends State<CompleteProfileWidget> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
            backgroundColor: Colors.white,

      body: SafeArea(
        child: 
        SingleChildScrollView(
          child: 
        
          Center(
          child: 
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.w
            ),
            child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/complete_profile.png").animate()
                        .fadeIn(duration: 300.ms, curve: Curves.easeInOut),


SizedBox(height: 30.h),
            Text("Let’s complete your profile",
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold
            ),
            ).animate()
                        .fadeIn(duration: 300.ms,delay: 100.ms, curve: Curves.easeInOut),
            SizedBox(height: 5.h),
            Text("It will help us to know more about you!",
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.normal
            ),).animate()
                        .fadeIn(duration: 400.ms,delay: 150.ms, curve: Curves.easeInOut),

            SizedBox(height: 30.h),

SelectInput(
  icon: "assets/icons/gender.svg",
  placeholder: "Gendar",
  items: ["Male", "Female"],
  value: "Male",
  onSelect: (v) {
    print("Selected: $v");
  },
).animate()
                        .fadeIn(duration: 700.ms ,curve: Curves.easeInOut),
        
  
             SizedBox(
                height: 15.h,
              ),
      

                Input(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a birth date';
                  }
                  return null;
                },
                icon: "assets/icons/calendar.svg",
                placeholder:"Date of Birth"
              ).animate()
                        .fadeIn(duration: 700.ms ,curve: Curves.easeInOut),


              SizedBox(
                height: 15.h,
              ),
            
Row(
  children: [
    Expanded(
      child: Input(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your weight';
          }
          return null;
        },
        icon: "assets/icons/weight.svg",
        placeholder:"Your Weight",
      ),
    ),

    SizedBox(width: 10),

    Container(
      decoration: BoxDecoration(
        gradient: AppGradient.purpleLinear,
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextButton(
        onPressed: (){}, 
        child: Text(
          "KG",
          style: TextStyle(color: Colors.white),
        ),
        style: TextButton.styleFrom(
          backgroundColor: Colors.transparent,
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    )
  ],
).animate()
                        .fadeIn(duration: 700.ms ,curve: Curves.easeInOut),

              SizedBox(
                height: 15.h,
              ),
            Row(
  children: [
    Expanded(
      child: Input(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your height';
          }
          return null;
        },
        icon: "assets/icons/height.svg",
        placeholder:"Your Height",
      ),
    ),

    SizedBox(width: 15.h),

    Container(
      decoration: BoxDecoration(
        gradient: AppGradient.purpleLinear,
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextButton(
        onPressed: (){}, 
        child: Text(
          "CM",
          style: TextStyle(color: Colors.white),
        ),
        style: TextButton.styleFrom(
          backgroundColor: Colors.transparent,
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    )
  ],
).animate()
                        .fadeIn(duration: 700.ms ,curve: Curves.easeInOut),

    SizedBox(height: 15.h),

   Button(onPressed: (){

            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SelectGoalWidget(),
              ),
            );
          }, content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
          "Next",
          style: TextStyle(fontSize: 16.sp, color: Colors.white,
          fontWeight: FontWeight.bold),
        ),
        HugeIcon(icon: HugeIcons.strokeRoundedArrowRight01, 
        size: 16.w,
        color: Colors.white,)
          ],
        ),).animate()
                        .fadeIn(duration: 700.ms ,curve: Curves.easeInOut),



          ],
        )),
          )
        )
    )
    );
  }
}

class SelectInput extends StatefulWidget {
  final String icon;
  final String placeholder;
  final List<String> items;
  final Function(String) onSelect;
  final String? value;

  const SelectInput({
    super.key,
    required this.icon,
    required this.placeholder,
    required this.items,
    required this.onSelect,
    this.value,
  });

  @override
  State<SelectInput> createState() => _SelectInputState();
}

class _SelectInputState extends State<SelectInput> {
  String? selected;

  @override
  void initState() {
    selected = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: openSelector,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 3),
        decoration: BoxDecoration(
          color: const Color(0xFFF7F8F8),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: const Color(0xFFF7F8F8), width: 0),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              widget.icon,
              width: 15.w,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.placeholder,
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: const Color(0xFFC6C4D4),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    selected ?? "",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            const Icon(Icons.keyboard_arrow_down, color: Colors.grey),
          ],
        ),
      ),
    );
  }

  void openSelector() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(22)),
      ),
      builder: (context) {
        return SizedBox(
          height: 320.h,
          child: Column(

          
            children: [
              Container(
                width: 50,
                height: 6,
                margin: const EdgeInsets.only(top: 12, bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),

              Text(widget.placeholder,
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),

              const SizedBox(height: 12),

              Expanded(
                child: ListView.separated(
                  itemCount: widget.items.length,
                  separatorBuilder: (_, __) =>
                      Divider(height: 1, color: Colors.grey.shade200),
                  itemBuilder: (context, index) {
                    String item = widget.items[index];

                    return ListTile(
                      title: Text(item, style: TextStyle(fontSize: 12.sp)),
                      onTap: () {
                        setState(() {
                          selected = item;
                        });
                        widget.onSelect(item);
                        Navigator.pop(context);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
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
