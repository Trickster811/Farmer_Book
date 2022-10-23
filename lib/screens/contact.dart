import 'package:agriculture/screens/ressources-components/ressources_item_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactScreen extends StatelessWidget {
  final List<String> audiosMessage = [
    'assets/audios/1.mp3',
    'assets/audios/1.mp3',
  ];
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
                  'Contacter un conseiller',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              contactElementBuilder(
                  context, 'Appeller', Icons.phone_in_talk_rounded,0),
              SizedBox(
                height: 50,
              ),
              contactElementBuilder(
                  context, 'Contacter via WhatsApp', Icons.whatsapp_rounded,1),
              SizedBox(
                height: 50,
              ),
              contactElementBuilder(
                  context, 'Nous Ecrire', Icons.message_rounded,2)
            ],
          ),
        ),
      ),
    );
  }

  Widget contactElementBuilder(
      BuildContext context, String title, IconData icon, int index) {
    return InkWell(
      onTap: () {
        
        showCupertinoModalPopup(
          context: context,
          builder: (context) => CupertinoActionSheet(
            title: Text(
              'Support',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'ArialRoundedBold',
              ),
            ),
            message: Text(
              "Nos teleconseillers a votre entiere disposition",
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'ArialRoundedBold',
              ),
            ),
            actions: [
              CupertinoActionSheetAction(
                // onPressed: () => imageGallerypicker(ImageSource.camera, context),
                onPressed: () {},
                child: Text(
                  '696363161 (Simon DEKOKEBE)',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontFamily: 'ArialRoundedBold',
                  ),
                ),
              ),
              CupertinoActionSheetAction(
                // onPressed: () => imageGallerypicker(ImageSource.camera, context),
                onPressed: () {},
                child: Text(
                  '699398876 (Nestor WABADANG)',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontFamily: 'ArialRoundedBold',
                  ),
                ),
              ),
              CupertinoActionSheetAction(
                // onPressed: () => imageGallerypicker(ImageSource.camera, context),
                onPressed: () {},
                child: Text(
                  '696858395 (Christophe TCHIKOUA)',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontFamily: 'ArialRoundedBold',
                  ),
                ),
              ),
            ],
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(20.0),
        // height: 30,
        width: double.maxFinite,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(
              icon,
              size: 30,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
