import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:flutter_svg/flutter_svg.dart";

import "../../../../core/utils/image_constant.dart";

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              ImageConstant.splashImage,
            ),
            SizedBox(
              height: 10.h,
            ),
            const Text(
              "Don't worry about \n the weather we all here",
            )
          ],
        ),
      ),
    );
  }
}
