import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:little_dreamers/pages/sign_in/sign_in.dart';

import 'package:little_dreamers/pages/welcome/bloc/welcome_bloc.dart';
import 'package:little_dreamers/pages/welcome/components/theme.dart';
import 'package:little_dreamers/pages/welcome/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => WelcomeBloc(),
        )
      ],
      child: ScreenUtilInit(
        builder: (context, child) => MaterialApp(
          title: 'Flutter Demo',
          theme: customTheme,
          home: const Welcome(),
          routes: {
            "signInPage": (context) => SignIn(),
          },
        ),
      ),
    );
  }
}
