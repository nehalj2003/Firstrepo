import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'desc.dart';
class next extends StatefulWidget {
  const next({super.key});

  @override
  State<next> createState() => _nextState();
}

class _nextState extends State<next> {
  void  cal()
  {
    name = _name.text;
    Fahre=double.parse(_Fahre.text.toString());
    // weight=double.parse(_weight.text.toString());


    setState(()
    {
      celcius=(5*(Fahre!-32))/9;
      celcius= double.parse((celcius!).toStringAsFixed(2));

    });
  }

  TextEditingController _name=TextEditingController();
  TextEditingController _Fahre=TextEditingController();
  //TextEditingController _weight=TextEditingController();
  String? name;
  double? celcius;
  // double? weight;
  double? Fahre;
  //double? F;
  // String? calc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
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
        body:Stack(
          children: [
            Positioned.fill(
              child:Image.asset('assets/maus.jpg',
                  fit:BoxFit.cover
              ) ,

            ),
            Center(child: Container(
                width: 350.0,
                height: 400.0,
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 60,
                  bottom:0,
                ),
                decoration: BoxDecoration(
                  // image:DecorationImage(
                  //     image: NetworkImage("https://t3.ftcdn.net/jpg/04/48/06/74/360_F_448067440_hTWoSx63cvavKS0qYDs1BR2Qg5C0JVB7.jpg"),
                  //     fit: BoxFit.cover),

                  boxShadow: [
                    BoxShadow(
                      color:Colors.transparent,//black
                      blurRadius: 15.0,
                    )
                  ],
                  border:Border.all(color:Colors.white),

                  color:Colors.transparent,//black38
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(50.0),
                      bottomRight: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                      bottomLeft: Radius.circular(50.0)),

                ),

                // constraints: BoxConstraints(),

                child:Column(
                    children:[
                      Text("Fahreneit To Celcius",style:TextStyle(color:Colors.cyanAccent,fontSize: 20)),

                      //Text("Email",style:TextStyle(color:Colors.white,fontSize: 20,)),
                Padding(padding: EdgeInsets.all(20.0),
                    child:
                      TextField(controller: _name,
                        style: TextStyle(
                            color: Colors.blue),decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(
                                color:Colors.redAccent,
                                width: 3,
                              ),),
                            labelText: " Username" ,
                            icon: Icon(Icons.person),
                            iconColor: Colors.white,
                            labelStyle: TextStyle(color:Colors.white,fontSize: 20)


                        ),
                      ),
                ),
                      //Text("Password",style:TextStyle(color:Colors.white,fontSize: 20)),
                Padding(padding: EdgeInsets.all(20.0),
                    child:
                      TextField(controller: _Fahre,
                          style: TextStyle(
                              color: Colors.blue),
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                    color:Colors.redAccent,
                                    width: 3,
                              ),),
                              labelText: " Temp in Fahreneit",
                              icon: Icon(Icons.rotate_90_degrees_cw_rounded),
                              iconColor: Colors.white,
                              labelStyle: TextStyle(color:Colors.white,fontSize: 20)
                          )
                      ),
                ),
                      // TextField(controller: _weight,
                      //     style: TextStyle(
                      //         color: Colors.lightGreenAccent),
                      //     decoration: const InputDecoration(
                      //         labelText: " Weight",
                      //         icon: Icon(Icons.monitor_weight_outlined),
                      //         iconColor: Colors.white,
                      //         labelStyle: TextStyle(color:Colors.white,fontSize: 20)
                      //     )),

                      Center(
                        child: ElevatedButton(onPressed: (){cal();
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: Text("Your converted temperature is :  $celcius  `C",
                                style:TextStyle(color:Colors.black)),
                            content: const Text('ThankYOU  :) ',style: TextStyle(color:Colors.pink),),
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
                            child:Text("Convert")),


                      ),
                      // ElevatedButton(onPressed: (){},
                      //   child:// Text("Name:  $name",style:TextStyle(color:Colors.white)),
                      //   Text(" Your converted temperature is :  $celcius `C",style:TextStyle(color:Colors.black)),
                      //   style: ElevatedButton.styleFrom(
                      //     primary: Colors.red,
                      //     shadowColor: Colors.blue,
                      //     surfaceTintColor: Colors.cyan,
                      //
                      //   ),
                      //
                      //
                      // )

                    ]
                )
            ))
          ],
        )

    );
  }
}
