import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'containers.dart';

class Calculator extends StatefulWidget {
  Calculator({Key key}) : super(key: key);
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  _CalculatorState();

  String num1 = '';
  String num2 = '';
  String opr = '';
  dynamic numbersColor = Colors.black;
  dynamic result = 0;
  dynamic containerColor = Color(0xfff7f7f7);
  dynamic mainContainerColor = Color(0xfff7f7f7);
  dynamic scaffoldColor = Color(0xffffffff);

  void type(val) {
    if (opr == '') {
      num1 += val;
    } else if (opr == '+' || opr == '-' || opr == 'x' || opr == '/') {
      num2 += val;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Container(height: MediaQuery
          .of(context)
          .size
          .height * 1, width: MediaQuery
          .of(context)
          .size
          .width * 1, color: scaffoldColor,),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 130),
              height: 65,
              width: 140,
              decoration: BoxDecoration(
                  color: containerColor,
                  border: Border.all(color: containerColor, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(children: [
                InkWell(onTap: () {
                  setState(() {
                    ret();
                  });
                },
                  child: Container(
                    child: Icon(
                      Icons.wb_sunny_outlined,
                      size: 30,
                      color: numbersColor,
                    ),
                    padding: EdgeInsets.only(left: 20),
                  ),
                ),
                InkWell(onTap: () {
                  setState(() {
                    changeColor();
                  });
                },
                  child: Container(
                    child: Icon(
                      Icons.nights_stay_outlined,
                      size: 30,
                      color: numbersColor,
                    ),
                    padding: EdgeInsets.only(left: 40, bottom: 5),
                  ),
                ),
              ]),
            ),

            Padding(
                padding: const EdgeInsets.only(bottom: 27.0, right: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '$num2',
                            style: TextStyle(
                                color: numbersColor,
                                fontSize: 25.0,
                                fontWeight: FontWeight.w300),
                          ),
                          Text(
                            '$opr',
                            style: TextStyle(
                                color: numbersColor,
                                fontSize: 25.0,
                                fontWeight: FontWeight.w300),
                          ),
                          Text(
                            '$num1',
                            style: TextStyle(
                                color: numbersColor,
                                fontSize: 25.0,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '$result',
                          style: TextStyle(
                              color: numbersColor,
                              fontSize: 48.0,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                )),
            Container(
              height: 515,
              width: double.infinity,
              decoration: BoxDecoration(
                color: mainContainerColor,
                border: Border.all(
                  color: mainContainerColor,
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                opr = '';
                                num2 = '';
                                num1 = '';
                                result = 0;
                              });
                            },
                            child: Containers(
                                cont: 'AC',
                                color: Color(0xff66c7b8),
                                containerColor: containerColor)),
                        InkWell(
                            onTap: () {
                              setState(() {
                                changeMark();
                              });
                            },
                            child: Containers(
                              cont: '+/-',
                              color: Color(0xff66c7b8),
                              containerColor: containerColor,)),
                        InkWell(
                            onTap: () {
                              setState(() {
                                result = double.parse(num1) / 100;
                              });
                            },
                            child: Containers(
                                cont: '%',
                                color: Color(0xff66c7b8),
                                containerColor: containerColor)),
                        InkWell(
                            onTap: () {
                              setState(() {
                                opr = '/';
                                addingToResult();
                              });
                            },
                            child: Containers(
                                cont: '/',
                                color: Color(0xffc46b79),
                                containerColor: containerColor)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                type('7');
                              });
                            },
                            child: Containers(
                                cont: '7',
                                color: numbersColor,
                                containerColor: containerColor)),
                        InkWell(
                            onTap: () {
                              setState(() {
                                type('8');
                              });
                            },
                            child: Containers(
                                cont: '8',
                                color: numbersColor,
                                containerColor: containerColor)),
                        InkWell(
                            onTap: () {
                              setState(() {
                                type('9');
                              });
                            },
                            child: Containers(
                                cont: '9',
                                color: numbersColor,
                                containerColor: containerColor)),
                        InkWell(
                            onTap: () {
                              setState(() {
                                opr = 'x';
                                addingToResult();
                              });
                            },
                            child: Containers(
                                cont: 'x',
                                color: Color(0xffc46b79),
                                containerColor: containerColor)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                type('4');
                              });
                            },
                            child: Containers(
                                cont: '4',
                                color: numbersColor,
                                containerColor: containerColor)),
                        InkWell(
                            onTap: () {
                              setState(() {
                                type('5');
                              });
                            },
                            child: Containers(
                                cont: '5',
                                color: numbersColor,
                                containerColor: containerColor)),
                        InkWell(
                            onTap: () {
                              setState(() {
                                type('6');
                              });
                            },
                            child: Containers(
                                cont: '6',
                                color: numbersColor,
                                containerColor: containerColor)),
                        InkWell(
                            onTap: () {
                              setState(() {
                                opr = '-';
                                addingToResult();
                              });
                            },
                            child: Containers(
                                cont: '_',
                                color: Color(0xffc46b79),
                                containerColor: containerColor)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                type('1');
                              });
                            },
                            child: Containers(
                                cont: '1',
                                color: numbersColor,
                                containerColor: containerColor)),
                        InkWell(
                            onTap: () {
                              setState(() {
                                type('2');
                              });
                            },
                            child: Containers(
                                cont: '2',
                                color: numbersColor,
                                containerColor: containerColor)),
                        InkWell(
                            onTap: () {
                              setState(() {
                                type('3');
                              });
                            },
                            child: Containers(
                                cont: '3',
                                color: numbersColor,
                                containerColor: containerColor)),
                        InkWell(
                          onTap: () {
                            setState(() {
                              opr = '+';
                              addingToResult();
                            });
                          },
                          child: Containers(
                              cont: '+',
                              color: Color(0xffc46b79),
                              containerColor: containerColor),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                clear();
                              });
                            },
                            child: Containers(
                                cont: '⌫',
                                color: numbersColor,
                                containerColor: containerColor)),
                        InkWell(
                            onTap: () {
                              setState(() {
                                type('0');
                              });
                            },
                            child: Containers(
                                cont: '0',
                                color: numbersColor,
                                containerColor: containerColor)),
                        InkWell(
                            onTap: () {
                              setState(() {
                                type('.');
                              });
                            },
                            child: Containers(
                                cont: '.',
                                color: numbersColor,
                                containerColor: containerColor)),
                        InkWell(
                            onTap: () {
                              setState(() {
                                solution();
                              });
                            },
                            child: Containers(
                                cont: '=',
                                color: Color(0xffc46b79),
                                containerColor: containerColor)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],);
  }

  solution() {
    if (opr == '+') {
      return sum();
    } else if (opr == '-') {
      return minus();
    } else if (opr == 'x') {
      return mult();
    } else if (opr == '/') {
      return div();
    }
  }

  sum() {
    result = double.parse('$num1') + double.parse('$num2');
  }

  minus() {
    result = double.parse(num1) - double.parse(num2);
  }

  mult() {
    result = double.parse(num1) * double.parse(num2);
  }

  div() {
    result = double.parse(num1) / double.parse(num2);
  }

  changeMark() {
    if (num2 == '') {
      result = double.parse('-$num1');
    } else if (opr == '+') {
      opr = '-';
    } else if (opr == '-') {
      opr = '+';
    } else if (num2.isNotEmpty) {
      if (opr == '-') {
        opr = '+';
      } else
        opr = '-';
    }
    if (result != 0.0 && num1.isNotEmpty && num2.isNotEmpty) {
      return result = -result;
    }
  }

  clear() {
    if (num2 == '' && opr == '') {
      num1 = num1.substring(0, num1.length - 1);
    } else if (num2 == '' &&
        (opr == '+' || opr == '-' || opr == 'x' || opr == '/')) {
      opr = opr.substring(0, opr.length - 1);
    } else if (num1.isNotEmpty &&
        (opr == '+' || opr == '-' || opr == 'x' || opr == '/')) {
      num2 = num2.substring(0, num2.length - 1);
    }
    if (result != 0.0) {
      return result = 0.0;
    }
  }

  changeColor() {
    if (containerColor == Color(0xfff7f7f7) && numbersColor == Colors.black &&
        mainContainerColor == Color(0xfff7f7f7) &&
        scaffoldColor == Color(0xffffffff)) {
      containerColor = Color(0xff282b34);
      numbersColor = Colors.white;
      mainContainerColor = Color(0xff292d36);
      scaffoldColor = Color(0xff22252e);
    }
  }

  ret() {
    if (containerColor == Color(0xff282b34) && numbersColor == Colors.white &&
        mainContainerColor == Color(0xff292d36) &&
        scaffoldColor == Color(0xff22252e)) {
      containerColor = Color(0xfff7f7f7);
      numbersColor = Colors.black;
      mainContainerColor = Color(0xfff7f7f7);
      scaffoldColor = Color(0xffffffff);
    }
  }addingToResult(){
    if(result!=0&&opr!=''){
      result='$num1';
      num2='';
      result=0;
    }
  }
}
