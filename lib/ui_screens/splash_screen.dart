import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../common_widgets/logo_widget.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds:4),(){

          Navigator.pushNamed(context, "login");
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [

          const Center(
            child:LogoImage(),
          ),

          Align(
            alignment: Alignment.topLeft,
            child: SvgPicture.asset(
              "assets/images/elipse1.svg",
              width: 43.w,
              height: 200.h,
            ),
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: SvgPicture.asset(
              "assets/images/Ellipse 3.svg",
              width: 110.w,
              height: 110.h,
            ),
          ),

          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
              "assets/images/Ellipse 2.svg",
              width: 155.w,
              height: 155.h,
            ),
          ),
        ],
      ),
    );
  }
}

