import 'package:carousel/packages/Constraint.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: Text('Material UI '),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Container(
                  margin: EdgeInsets.all(15),
                  child: Image.asset('assets/images/home.png')),
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
            Spacer(),
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 5, 25, 5),
                  child: Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: kPrimaryColor.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(30.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 2),
                                blurRadius: 1)
                          ]),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/carousel');
                        },
                        child: Text('CAROUSEL',
                            style: kTitle2Style.copyWith(
                                color: Colors.white,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.w500,
                                fontSize: 17)),
                        splashColor: Colors.black12,
                      )),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 5, 25, 5),
                  child: Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: kPrimaryColor.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(30.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 2),
                                blurRadius: 1)
                          ]),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/context_menu');
                        },
                        child: Text('CONTEXT MENU',
                            style: kTitle2Style.copyWith(
                                color: Colors.white,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.w500,
                                fontSize: 17)),
                        splashColor: Colors.black12,
                      )),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 5, 25, 5),
                  child: Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: kPrimaryColor.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(30.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 2),
                                blurRadius: 1)
                          ]),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/material_banner');
                        },
                        child: Text('MATERIAL BANNER',
                            style: kTitle2Style.copyWith(
                                color: Colors.white,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.w500,
                                fontSize: 17)),
                        splashColor: Colors.black12,
                      )),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 5, 25, 5),
                  child: Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: kPrimaryColor.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(30.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 2),
                                blurRadius: 1)
                          ]),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/stepper');
                        },
                        child: Text('STEPPER',
                            style: kTitle2Style.copyWith(
                                color: Colors.white,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.w500,
                                fontSize: 17)),
                        splashColor: Colors.black12,
                      )),
                ),
                Spacer()
              ],
            ),
          ),
        ));
  }
}
