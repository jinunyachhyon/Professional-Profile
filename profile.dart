import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: const MyHomePage(title: 'My First Project'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF3F1F6),
        // appBar: PreferredSize(
        //   child:  Container(
        //      child: const Padding(
        //        padding: EdgeInsets.only(
        //            left: 30.0,
        //            top: 20.0,
        //            bottom: 20.0
        //        ),
        //        child:  Text(
        //          'Lets Code',
        //          style:  TextStyle(
        //              fontSize: 20.0,
        //              fontWeight: FontWeight.w500,
        //              color: Colors.white
        //          ),
        //        ),
        //      ),
        //    ),
        // ),

        body: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 50),
                child: CircleAvatar(
                  radius: 105,
                  backgroundColor: Colors.yellow,
                  child:CircleAvatar(
                    radius: 95.0,
                    backgroundImage: AssetImage('Image/Jinu Nyachhyon.jpg')
                  )
              ),
            ),
            ),
            
            Container(
              margin: EdgeInsets.only(top: 20),
                child: Text("Jinu Nyachhyon", textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
            ),
            
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top:80,bottom: 20,left:8,right:8),
                    padding: EdgeInsets.only(top:30,bottom: 30,right: 8,left: 8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(color: Color(0xff9AD5F3)),
                        ]
                    ),
                      child: Column(
                        children: [
                          Image.asset('Image/github icon.png',width: 80,height:80),
                          SizedBox(height: 20,),
                          Text("https://github.com/jinunyachhyon", textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20)),
                        ],
                      ),
                  ),
                ),

                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top:80,bottom: 20,left:0,right:8),
                    padding: EdgeInsets.only(top: 22,right: 8,left: 8, bottom: 22),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(color: Color(0xffF8BE7E)),
                        ]
                    ),
                    child: Column(
                      children: [
                        Image.asset('Image/linkedin png.png',width: 74,height:74),
                        SizedBox(height: 18,),
                        Text("https://www.linkedin.com/in/jinu-nyachhyon-982423aa/",
                          textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),
                ),

              ],
            )


            
          ],
        ),
      ),
    );
  }
}

