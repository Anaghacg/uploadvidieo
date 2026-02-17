import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uploadvideo/core/widgets/home/presentation/home.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body:SafeArea(child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(children: [
          SizedBox(height: 60,),
          Text("Enter Your \nMobile Number",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Text("We will send you OTP to verify your number.",style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 30,),
       Container(padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(color: Color(0xFF1A1D24),
                    borderRadius: BorderRadius.circular(8)),
                    child: Row(children: [
                      Text(("+91"),
                      ),SizedBox(width: 10,),
                      Expanded(child: TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(border: InputBorder.none,
                        hintText: "Enter Mobile Number"),
                      ))
                    ],),
                    ),

              Spacer(),
              SizedBox(width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFE53935),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen()));
                  },
                  child: Text("Continue"),
                ),
              ),SizedBox(height: 30,) 
                    
        ],),
        ))
    );
  }
}