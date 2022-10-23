import 'package:flutter/material.dart';

class SuiviScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.orange),
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar,
      // drawer: Drawer(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Color.fromARGB(255, 146, 132, 224),
            ],
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            children: [
              Container(
                height: appBar.preferredSize.height,
              ),
              Container(
                height: 30,
                width: double.maxFinite,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Text(
                  'Suivi des Activites',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Table(
                // defaultColumnWidth: FixedColumnWidth(100.0),
                border: TableBorder.all(
                  color: Colors.white,
                  style: BorderStyle.solid,
                  width: 2,
                ),
                children: [
                  TableRow(children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 57, 43, 255),
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Activité',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 57, 43, 255),
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Coût',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 57, 43, 255),
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Date',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 218, 218, 218),
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 218, 218, 218),
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 218, 218, 218),
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 243, 243),
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 243, 243),
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 243, 243),
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 218, 218, 218),
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 218, 218, 218),
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 218, 218, 218),
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 243, 243),
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 243, 243),
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 243, 243),
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 218, 218, 218),
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 218, 218, 218),
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 218, 218, 218),
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                  ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
