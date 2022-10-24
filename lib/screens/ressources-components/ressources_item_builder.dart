import 'package:agri_facile_fulfulde/screens/ressources_component_page_viewer/page_viewer.dart';
import 'package:flutter/material.dart';

class RessourcesItemBuilderScreen extends StatelessWidget {
  final String title;
  final List item;

  const RessourcesItemBuilderScreen({
    Key? key,
    required this.item,
    required this.title,
  }) : super(key: key);
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
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              for (var element in item) itemBuilder(context, element),
            ],
          ),
        ),
      ),
    );
  }

  Widget itemBuilder(BuildContext context, List item) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => RessourcesItemPageViewerScreen(
                  title: title,
                  subTitle: 'Theme : ${item[0]}',
                  link: item[1],
                )),
          ),
        );
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            // height: 30,
            width: double.maxFinite,
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Text(
              'Thème : ${item[0]}',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
