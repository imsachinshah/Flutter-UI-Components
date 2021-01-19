import 'package:carousel/packages/Constraint.dart';
import 'package:flutter/material.dart';

class BannerScreen extends StatefulWidget {
  _BannerScreenState createState() => _BannerScreenState();
}

class _BannerScreenState extends State<BannerScreen> {
  bool showBanner = false;
  void _toggleBanner() {
    setState(() {
      showBanner = !showBanner;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Material Banner'),
            backgroundColor: kPrimaryColor,
            centerTitle: true),
        body: SafeArea(
          child: Column(
            children: [
              if(showBanner)
              MaterialBanner(
                  leading: CircleAvatar(
                    backgroundColor: kPrimaryColor,
                    child: Icon(
                      Icons.subscriptions,
                      color: Colors.white,
                    ),
                  ),
                  content: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('WEEKLY ROUNDOWN', style: kHeadlineLabelStyle),
                        Padding(
                            padding: EdgeInsets.only(top: 4.0),
                            child: Text(
                                '''The case for a six-hour workday, An office model that suits everyone?, and other top news for you''',
                                style: kBodyTextStyle.copyWith(
                                    color: Colors.black)))
                      ],
                    ),
                  ),
                  actions: [
                    FlatButton(
                        child: Text("DISMISS", style: kActionTextStyle),
                        onPressed: _toggleBanner,),
                    FlatButton(
                        child: Text("VIEW", style: kActionTextStyle),
                        onPressed: () {}),
                  ]),
              
              Spacer(flex: 2,),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                RaisedButton(
                  color: kPrimaryColor.withOpacity(0.6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                    onPressed: _toggleBanner,
                    child: Text('Toggle Banner', style: kActionTextStyle.copyWith(color: Colors.white)))
              ]),
              Spacer(),
               Column(
              children: [
                SizedBox(height: 50,),
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
            Spacer()
            ],
          ),
        ));
  }
}
