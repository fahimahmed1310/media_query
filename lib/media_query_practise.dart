import 'package:flutter/material.dart';

class MediaQueryPractise extends StatefulWidget {
  const MediaQueryPractise({Key? key}) : super(key: key);

  @override
  State<MediaQueryPractise> createState() => _MediaQueryPractiseState();
}

class _MediaQueryPractiseState extends State<MediaQueryPractise> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    double borderSide = size.shortestSide - 50;


    return Scaffold(
      body: Center(
        child: Builder(builder: (context){
          if(orientation.index == Orientation.landscape.index){
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                layoutChildren(borderSide),
            );
          }else{
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              layoutChildren(borderSide),
            );
          }
        }),
      ),
    );
  }
}


List<Widget> layoutChildren (double borderSide){
  return [
    Container(
      width: borderSide,
      height: borderSide,
      color: Colors.red,
      alignment: Alignment.center,
      child: Text("Container 1",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    Container(
      width: borderSide,
      height: borderSide,
      color: Colors.green,
      alignment: Alignment.center,
      child: Text("Container 2",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ];
}
