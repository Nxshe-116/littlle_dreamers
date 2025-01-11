import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:little_dreamers/app/app_blocs.dart';
import 'package:little_dreamers/app/app_events.dart';
import 'package:little_dreamers/app/app_states.dart';
import 'package:little_dreamers/pages/welcome/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      
      create:   (context) => AppBlocs(),
      child: ScreenUtilInit(
        builder: (context, child) =>  MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Welcome()
    ),
    
    
    ),
      
      ) ;
  }
}
