import 'package:flutter/material.dart';
import 'package:uploadvideo/core/widgets/auth/presentation/login.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
theme: ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Color(0xFF0F1115),
  primaryColor: Color(0xFFE53935),
  fontFamily: 'Roboto'

),
home:LoginScreen(),
    );
  }
}