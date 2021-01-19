import 'package:carousel/packages/Constraint.dart';
import 'package:flutter/material.dart';

class StepperScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Stepper Screen'), backgroundColor: kPrimaryColor),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SafeArea(
                child: Center(
              child: Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: kShadowColor,
                          blurRadius: 30.0,
                          offset: Offset(0, 20))
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.04),
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Image.asset('assets/images/cherry.png',
                                    fit: BoxFit.fitWidth)))),
                    Padding(
                        padding: EdgeInsets.only(top: 8.0, left: 8.0),
                        child: Text('Red Cherry',
                            style: TextStyle(color: Colors.black, fontSize: 18.0))),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0, left: 8.0),
                      child: Row(
                        children: [
                          Text('\$ 12.38',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold)),
                          Spacer(),
                          CustomStepper(
                              lowerLimit: 0,
                              upperLimit: 20,
                              stepValue: 1,
                              iconSize: 22.0,
                              value: 0),
                              
                        ],
                      ),
                    ),
                    

                  ],
                ),
              ),
            )),
            SizedBox(height: 60,),
             Column(
              children: [
                Text(
                  'Flutter UI Component Library',
                  style: kHeadlineLabelStyle,
                ),
                SizedBox(height: 4,),
                Text(
                  '@imsachinshah',
                  style: kSubtitleStyle,
                )
              ],
            ),
          ],
        ));
  }
}

class CustomStepper extends StatefulWidget {
  CustomStepper({
    @required this.lowerLimit,
    @required this.upperLimit,
    @required this.stepValue,
    @required this.iconSize,
    @required this.value,
  });

  final int lowerLimit;
  final int upperLimit;
  final int stepValue;
  final double iconSize;
  int value;
  @override 
  _CustomStepperState createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        RoundedIconButton(
          icon: Icons.remove,
          iconSize: widget.iconSize,
          onPress: () {
            setState(() {
              widget.value = widget.value == widget.lowerLimit
                  ? widget.value
                  : widget.value -= widget.stepValue;
            });
          },
        ),
        Container(
          width: widget.iconSize,
          child: Text('${widget.value}',
          style: TextStyle(
            fontSize: widget.iconSize * 0.8
          ),
          textAlign: TextAlign.center,
          ),
        ),
        RoundedIconButton(
          icon: Icons.add,
          iconSize: widget.iconSize,
          onPress: () {
            setState(() {
              widget.value = widget.value == widget.upperLimit
                  ? widget.value
                  : widget.value += widget.stepValue;
            });
          },
        ),
      ],
    );
  }
}

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({
    @required this.icon,
    @required this.onPress,
    @required this.iconSize,
  });

  final IconData icon;
  final Function onPress;
  final double iconSize;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        constraints: BoxConstraints.tightFor(width: iconSize, height: iconSize),
        elevation: 6.0,
        onPressed: onPress,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(iconSize * 0.2),
        ),
        fillColor: Color(0xFF65A34A),
        child: Icon(
          icon,
          color: Colors.white,
          size: iconSize * 0.8,
        ));
  }
}
