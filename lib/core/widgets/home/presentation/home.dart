import 'package:flutter/material.dart';
import 'package:uploadvideo/core/widgets/add_feed/presentation/feedcard.dart';

class HomeScreen extends StatelessWidget{
  HomeScreen({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF0F1115),
        elevation: 0,
        title: Text("Hello Maria"),
        actions: [
          Padding(padding: EdgeInsets.only(right: 16),
          child: CircleAvatar(backgroundImage: NetworkImage("https://i.pravatar.cc/150?img=3",),),)
          
          
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed:(){},
      backgroundColor: Color(0xFFE53935),
            child: const Icon(Icons.add),
        ),
        body:Column(children: [
          SizedBox(height: 50,
          child:ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (context,index){
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xFF1A1D24),borderRadius: BorderRadius.circular(20)
                ),
                child: Text("Category"),
              );
            }, 
          separatorBuilder: (_,__)=>SizedBox(width: 10,), 
          itemCount: 5) ,),
          SizedBox(height: 10,),
          Expanded(child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context,index){
            return Feedcard();
            
          }),)
          
        ],)
    );
    
  }
}