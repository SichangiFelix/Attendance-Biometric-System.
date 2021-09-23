import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hezion_s/shared_widgets/stacked_containers.dart';
//import 'package:popup_box/popup_box.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //This is code to invoke the fingerprint scanning action.
    //local auth package
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              //this hero widget ads an animation
              child: Hero(
                tag: 'logo',
                child: StackedContainers(),
              ),
              flex: 1,
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'Welcome, place your finger on the scanner',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Text(
                            'Use the enrolled fingerprint',
                            style: kinfoTextStyling,
                          ),
                          Text(
                            'Make sure your finger is not wet or dirty',
                            style: kinfoTextStyling,
                          ),
                          Text(
                            'Try again if the first scan is unsuccessful',
                            style: kinfoTextStyling,
                          ),
                          Text(
                            'If still unsuccessful, contact admin',
                            style: kinfoTextStyling,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//used to style the text at the bottom
const kinfoTextStyling = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 13,
);


