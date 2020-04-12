import 'package:awesome_page_transitions/awesome_page_transitions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Awesome Page Transitions Demo',
      home: MyHomePage(title: 'Awesome Page Transitions Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Transition _transition = CubeTransition();
  TransitionsEnum _transitionsEnum = TransitionsEnum.CubeTransition;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton(
              value: _transitionsEnum,
              items: [
                DropdownMenuItem(
                  child: Text("CubeTransition"),
                  value: TransitionsEnum.CubeTransition,
                ),
                DropdownMenuItem(
                  child: Text("AccordionTransition"),
                  value: TransitionsEnum.AccordionTransition,
                ),
                DropdownMenuItem(
                  child: Text("ZoomOutSlideTransition"),
                  value: TransitionsEnum.ZoomOutSlideTransition,
                ),
                DropdownMenuItem(
                  child: Text("RotateUpTransition"),
                  value: TransitionsEnum.RotateUpTransition,
                ),
                DropdownMenuItem(
                  child: Text("RotateDownTransition"),
                  value: TransitionsEnum.RotateDownTransition,
                ),
                DropdownMenuItem(
                  child: Text("TabletTransition"),
                  value: TransitionsEnum.TabletTransition,
                ),
                DropdownMenuItem(
                  child: Text("StackTransition"),
                  value: TransitionsEnum.StackTransition,
                ),
                DropdownMenuItem(
                  child: Text("ParallaxTransition"),
                  value: TransitionsEnum.ParallaxTransition,
                ),
                DropdownMenuItem(
                  child: Text("ForegroundToBackgroundTransition"),
                  value: TransitionsEnum.ForegroundToBackgroundTransition,
                ),
                DropdownMenuItem(
                  child: Text("BackgroundToForegroundTransition"),
                  value: TransitionsEnum.BackgroundToForegroundTransition,
                ),
                DropdownMenuItem(
                  child: Text("FlipVerticalTransition"),
                  value: TransitionsEnum.FlipVerticalTransition,
                ),
                DropdownMenuItem(
                  child: Text("FlipHorizontalTransition"),
                  value: TransitionsEnum.FlipHorizontalTransition,
                ),
                DropdownMenuItem(
                  child: Text("DepthTransition"),
                  value: TransitionsEnum.DepthTransition,
                ),
                DropdownMenuItem(
                  child: Text("DefaultTransition"),
                  value: TransitionsEnum.DefaultTransition,
                ),
              ],
              onChanged: (value) {
                switch (value as TransitionsEnum) {
                  case TransitionsEnum.CubeTransition:
                    _transition = CubeTransition();
                    break;
                  case TransitionsEnum.AccordionTransition:
                    _transition = AccordionTransition();
                    break;
                  case TransitionsEnum.ZoomOutSlideTransition:
                    _transition = ZoomOutSlideTransition();
                    break;
                  case TransitionsEnum.RotateUpTransition:
                    _transition = RotateUpTransition();
                    break;
                  case TransitionsEnum.RotateDownTransition:
                    _transition = RotateDownTransition();
                    break;
                  case TransitionsEnum.TabletTransition:
                    _transition = TabletTransition();
                    break;
                  case TransitionsEnum.StackTransition:
                    _transition = StackTransition();
                    break;
                  case TransitionsEnum.ParallaxTransition:
                    _transition = ParallaxTransition();
                    break;
                  case TransitionsEnum.ForegroundToBackgroundTransition:
                    _transition = ForegroundToBackgroundTransition();
                    break;
                  case TransitionsEnum.BackgroundToForegroundTransition:
                    _transition = BackgroundToForegroundTransition();
                    break;
                  case TransitionsEnum.FlipVerticalTransition:
                    _transition = FlipVerticalTransition();
                    break;
                  case TransitionsEnum.FlipHorizontalTransition:
                    _transition = FlipHorizontalTransition();
                    break;
                  case TransitionsEnum.DepthTransition:
                    _transition = DepthTransition();
                    break;
                  case TransitionsEnum.DefaultTransition:
                  default:
                    _transition = DefaultTransition();
                    break;
                }
                setState(() {
                  _transitionsEnum = value;
                });
              },
            ),
            SizedBox(height: 64),
            OutlineButton(
              color: Colors.purple,
              borderSide: BorderSide(width: 2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              hoverColor: Colors.purple,
              child: Text("Next"),
              onPressed: () => Navigator.push(
                context,
                AwesomePageRoute(
                  transitionDuration: Duration(milliseconds: 800),
                  enterPage: SecondScreen(),
                  exitPage: widget,
                  transition: _transition,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.red,
        child: OutlineButton(
          color: Colors.purple,
          borderSide: BorderSide(width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          hoverColor: Colors.purple,
          child: Text("Close"),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}

enum TransitionsEnum {
  CubeTransition,
  AccordionTransition,
  ZoomOutSlideTransition,
  RotateUpTransition,
  RotateDownTransition,
  TabletTransition,
  StackTransition,
  ParallaxTransition,
  ForegroundToBackgroundTransition,
  BackgroundToForegroundTransition,
  FlipVerticalTransition,
  FlipHorizontalTransition,
  DepthTransition,
  DefaultTransition,
}
