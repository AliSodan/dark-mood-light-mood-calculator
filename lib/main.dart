import 'package:flutter/material.dart';
import 'Calc.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return  MaterialApp(home: Calc(),
        debugShowCheckedModeBanner: false,
    );
  }
}
class Calc extends StatefulWidget {
   Calc({Key key}) : super(key: key);

  @override
  _CalcState createState() => _CalcState();
}
class _CalcState extends State<Calc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Calculator(),
    );
  }
}


