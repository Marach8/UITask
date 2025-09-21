import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_task/src/core/theme/app_theme_data.dart';
import 'package:ui_task/src/features/onboarding/presentation/screens/onboading_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const UITask());
}



class UITask extends StatelessWidget {
  const UITask({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        darkTheme: UIThemeData.lightTheme,
        theme: UIThemeData.lightTheme,
        home: const UIOnboardingScreen(),
      ),
    );
  }
}
