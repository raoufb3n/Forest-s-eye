import 'package:ainechack/core/helpers/commonLibs.dart';
import 'package:flutter/material.dart';
import 'features/home/view/HomePage.dart';

void main() {
  runApp(const FireDetectionApp());
}

class FireDetectionApp extends StatelessWidget {
  const FireDetectionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (_,child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
          home: child,
          onGenerateRoute: AppRouter().generateRoute,
        );
        
      },
      child: const HomePage(),
    );
  }
}

