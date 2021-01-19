import 'package:carousel/packages/Constraint.dart';
import 'package:flutter/material.dart';

var choices = ['Item 1', 'Item 2', 'Item 3'];

class ContextMenu extends StatefulWidget {
  _ContextMenuState createState() => _ContextMenuState();
}

class _ContextMenuState extends State<ContextMenu> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String _selectedChoice;

  void _select(String choice) {
    setState(() {
      _selectedChoice = choice;
    });
    showSnackBar(choice);
  }

  void showSnackBar(String selection) {
    final snackBarContext = SnackBar(
      content: Text(
        'Selected: $selection',
        style: kBodyTextStyle,
      ),
      action: SnackBarAction(
          label: 'Undo', textColor: kSecondaryColor, onPressed: () {}),
    );
    _scaffoldKey.currentState.showSnackBar(snackBarContext);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Context Menu'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: kPrimaryColor,
        actions: [
          PopupMenuButton(
            padding: EdgeInsets.zero,
            onSelected: _select,
            itemBuilder: (context) {
              return choices.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          )
        ],
      ),
      body: BodyWidget(selection: _selectedChoice,),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key key,
    @required String selection,
  })  : _selection = selection,
        super(key: key);

  final String _selection;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Column(
           mainAxisAlignment: MainAxisAlignment.end,
           
              children: [
                SizedBox(height: 430,),
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
        _selection != null ? Center(child: Text('Selection: $_selection',
        style: kBodyTextStyle,)
        ) : Center(child: Text('Wecome to Flutter UI Component', style: kBodyTextStyle,),)
      ],
    );
  }
}
