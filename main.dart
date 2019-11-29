import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';

main()=> runApp(Controles());

class Controles extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Estado();
  }
}

class Estado extends State{

  AccelerometerEvent acelerometro;
  double left;
  double top;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: 
          Center(
            child: 
            Text('Acelerometro'),
          )
        ),
        body:
            Container(
                child: 
                Align(
                  alignment: Alignment(left,top),
                  child: Image.asset('images/logo.png'),
                ),
              ),   
      ),
    );
  }
  
  @override
  void initState(){
    super.initState();
    accelerometerEvents.listen(
        (AccelerometerEvent event){
            setState((){
              left=((event.x)/10)*-1;
              top=(event.y)/10;

            }   
            );
    }
    );
  }
}