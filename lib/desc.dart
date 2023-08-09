import 'package:flutter/material.dart';
class desc extends StatefulWidget {
  const desc({super.key});

  @override
  State<desc> createState() => _descState();
}

class _descState extends State<desc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.black,
        title: Text("TempConverter"),
        actions: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Image.asset("assets/temp.png")),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>desc()));
          }, icon: Image.asset("assets/intro.png"))

        ],

      ),
  body:

      //Text("Version :11.0.0",style: TextStyle(color: Colors.tealAccent),),
      Center(
        child: Container(
          height:350,
          width:350,
          decoration: BoxDecoration(
            color:Colors.white12,

          ),
          child:Column(
           children:[
             Text("Developed by : Nehal jain",style:TextStyle(color:Colors.lightGreenAccent,fontSize: 35,fontFamily: "cursive",)),
             Text(" Android Version : 15.0.0",style:TextStyle(color:Colors.white,fontSize: 35,fontFamily: "cursive")),
             Text("App Name: Temperature Converter",style:TextStyle(color:Colors.blue,fontSize: 35,fontFamily: "cursive")),
             Text("Developer Date : 04 August 2023",style:TextStyle(color:Colors.white,fontSize: 35,fontFamily: "cursive")),
           ElevatedButton(onPressed: (){
             showDialog<String>(
                 context: context,
                 builder: (BuildContext context) => AlertDialog(
                 icon:Icon(Icons.temple_hindu_outlined),
               iconColor: Colors.blue,
               backgroundColor: Colors.white,
               title: Text("Easily convert temperatures between Celsius and Fahrenheit with TempConvert."
                   " This sleek and user-friendly app simplifies temperature conversions for your convenience."
                   " Whether you're traveling or simply curious, TempConvert has you covered. "
                   "Download now and experience temperature conversion made effortless.",
                   style:TextStyle(color:Colors.black)),
               content: const Text('ThankYou For your time !! ',style: TextStyle(color:Colors.deepPurple,),),
                   actions: <Widget>[
                 TextButton(
                   onPressed: () => Navigator.pop(context, 'Cancel'),
                   child: const Text('Cancel'),
                 ),
                 TextButton(
                   onPressed: () => Navigator.pop(context, 'OK'),
                   child: const Text('OK'),
                 ),
               ],
             ),
             );
           },


               child: Text("Description",style: TextStyle(),),
             style: ElevatedButton.styleFrom(
             primary: Colors.blue,
             shadowColor: Colors.deepPurpleAccent,
             surfaceTintColor: Colors.cyan,
             elevation: 8.0,),)

           ]

          )
        ),
      )



    );
  }
}
