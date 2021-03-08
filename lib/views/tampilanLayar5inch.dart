import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class TampilanLayar5inch extends StatelessWidget {
  const TampilanLayar5inch({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Builder(builder: (context) {
      if (orientation.index == Orientation.landscape.index) {
        return scaffoldLandscape(context);
      } else {
        return scaffoldPotrait(context);
      }
    });
  }

  Scaffold scaffoldLandscape(BuildContext context) => Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                fit: FlexFit.loose,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 60, top: 40),
                          width: MediaQuery.of(context).size.width / 5,
                          height: MediaQuery.of(context).size.height / 7,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(70))),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, top: 20),
                          width: MediaQuery.of(context).size.width / 9,
                          height: MediaQuery.of(context).size.height / 4,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(70))),
                        ),
                      ],
                    ),
                    Container(
                        width: 100,
                        height: 100,
                        child: Icon(
                          Icons.notifications,
                          size: 60,
                          color: Colors.purple,
                        ))
                  ],
                ),
                flex: 1,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DottedBorder(
                        color: Colors.black,
                        dashPattern: [8, 4],
                        borderType: BorderType.RRect,
                        strokeWidth: 2,
                        radius: Radius.circular(12),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 2,
                            width: MediaQuery.of(context).size.width / 10,
                            child: Icon(
                              Icons.add,
                              color: Colors.purple,
                            ),
                            color: Colors.white,
                          ),
                        )),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 1.5,
                        width: MediaQuery.of(context).size.width / 1.3,
                        child: Card(
                          color: Colors.purple[100],
                        ),
                      ),
                    )
                  ],
                ),
                flex: 2,
              ),
              SizedBox(
                height: 20,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 2.5,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Colors.red,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 2.5,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Colors.red,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 2.5,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Colors.red,
                    ),
                  ],
                ),
                flex: 1,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.red,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.red,
                    ),
                  ],
                ),
                flex: 2,
              ),
            ],
          ),
        ),
      ));

  Scaffold scaffoldPotrait(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30, top: 15),
                          width: MediaQuery.of(context).size.width / 3,
                          height: MediaQuery.of(context).size.height / 25,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(70))),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          width: MediaQuery.of(context).size.width / 6,
                          height: MediaQuery.of(context).size.height / 13,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(70))),
                        ),
                      ],
                    ),
                    Container(
                        width: 100,
                        height: 100,
                        child: Icon(
                          Icons.notifications,
                          size: 45,
                          color: Colors.purple,
                        ))
                  ],
                ),
                flex: 1,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DottedBorder(
                        color: Colors.black,
                        dashPattern: [8, 4],
                        borderType: BorderType.RRect,
                        strokeWidth: 2,
                        radius: Radius.circular(12),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 5.5,
                            width: MediaQuery.of(context).size.width / 10,
                            child: Icon(
                              Icons.add,
                              color: Colors.purple,
                            ),
                            color: Colors.white,
                          ),
                        )),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width / 1.3,
                        child: Card(
                          color: Colors.purple[100],
                        ),
                      ),
                    )
                  ],
                ),
                flex: 2,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      height: MediaQuery.of(context).size.height / 8,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Colors.red,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      height: MediaQuery.of(context).size.height / 8,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Colors.red,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      height: MediaQuery.of(context).size.height / 8,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Colors.red,
                    ),
                  ],
                ),
                flex: 1,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      height: MediaQuery.of(context).size.height / 8,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.red,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      height: MediaQuery.of(context).size.height / 8,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.red,
                    ),
                  ],
                ),
                flex: 2,
              ),
            ],
          ),
        ));
  }
}
