import "dart:async";

import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

import "../../../../config/routes/route_constant.dart";
import "../../../../core/utils/image_constant.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timer;

  @override
  void didChangeDependencies() {
    timer = Timer(
        const Duration(
          seconds: 5,
        ), () {
      Navigator.of(context).pushNamed(
        RouteConstant.home,
      );
    });

    super.didChangeDependencies();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4A90E2),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                ImageConstant.splashImage,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Don't worry about \n the weather we all here",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
