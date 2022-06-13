import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:places/ui/res/constants.dart';
import 'package:places/ui/screen/sight_list_screen.dart';

void main() {
  Intl.defaultLocale = 'ru';
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
           localizationsDelegates: const [
//            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const <Locale>[Locale('ru','RU'), Locale('en','US'),],
      title: AppStrings.appTitle,
      theme: ThemeData(
//        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: AppColors.backgroundColor,
      ),
      home: const SightListScreen(),
//        home: const VisitingScreen(),
      // SightDetails(sight: mocks.first),
    );
  }
}

