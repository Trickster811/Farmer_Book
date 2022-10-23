import 'package:agriculture/screens/conseil.dart';
import 'package:agriculture/screens/contact.dart';
import 'package:agriculture/screens/quizz.dart';
import 'package:agriculture/screens/ressources.dart';
import 'package:agriculture/screens/suivi.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final screens = [
    RessourcesScreen(),
    SuiviScreen(),
    ConseilScreen(),
    QuizzScreen(),
    ContactScreen(),
  ];
  final List<String> audiosMessage = [
    'assets/audios/1.mp3',
    'assets/audios/1.mp3',
    'assets/audios/1.mp3',
    'assets/audios/1.mp3',
    'assets/audios/1.mp3',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Manuel du Paysan',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.orange),
      ),
      drawer: Drawer(),
      body: Container(
        width: MediaQuery.of(context).size.width,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                elementBuilder(
                  context,
                  Icons.live_tv_rounded,
                  'Ressources éducatives',
                  Colors.orange,
                  screens[0],
                ),
                elementBuilder(
                  context,
                  Icons.radar_rounded,
                  'Suivi des activités',
                  Colors.green,
                  screens[1],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                elementBuilder(
                  context,
                  Icons.lightbulb_rounded,
                  'Conseil du jour',
                  Colors.orange,
                  screens[2],
                ),
                elementBuilder(
                  context,
                  Icons.quiz_rounded,
                  'Quizz',
                  Colors.green,
                  screens[3],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            elementBuilder(
              context,
              Icons.phone_in_talk_rounded,
              'Contacter un conseiller',
              Colors.green,
              screens[4],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Text(
                    'A propos et confidentialité',
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 5,
                  height: 30,
                  color: Colors.white,
                ),
                Flexible(
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'Digital Agri Smart Training Group',
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget elementBuilder(
      BuildContext context, IconData icon, title, Color color, Widget screen) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        height: 75,
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                children: [
                  Text(title),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  icon,
                  color: color,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}