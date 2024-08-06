import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';

import "config/routes/router.dart";

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375.0, 812.0),
      builder: (_, child) {
        return const MaterialApp(
          onGenerateRoute: Routes.generateRoute,
          debugShowCheckedModeBanner: false,

        );
      },
    );
  }
}
