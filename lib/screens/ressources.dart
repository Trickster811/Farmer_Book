import 'package:agri_facile_fulfulde/screens/ressources-components/ressources_item_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RessourcesScreen extends StatelessWidget {
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
                  'Ressources éducatives',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ressourcesBuilder(
                context,
                'Agriculture',
                'assets/icons/corn.svg',
                [
                  [
                    'Bien stocker le mais',
                    "https://youtu.be/ZMsYAaDLSPI",
                  ],
                  [
                    "Gagner plus d'argent avec l'oignon",
                    "https://youtu.be/DOFImIZbGbc",
                  ],
                  [
                    "Utiliser des biofertilisants organiques",
                    "https://youtu.be/Glqb4rtM_O8",
                  ],
                  [
                    "Ameliorer la qualite du riz",
                    "https://youtu.be/mCZx8r9jHm0",
                  ],
                  [
                    "Transformez vos mangues en chips",
                    "https://youtu.be/Bbo4sH_9ZvU",
                  ],
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ressourcesBuilder(
                context,
                'Elevage',
                'assets/icons/cow-silhouette.svg',
                [
                  [
                    "Aviculture villageoise",
                    "https://youtu.be/2Hvk0-A_nlc",
                  ],
                  [
                    "Plantes medicinales pour traiter vos animaux",
                    "https://youtu.be/UQPUELeI3Vk",
                  ],
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ressourcesBuilder(
                context,
                "Gestion de l'exploitation",
                'assets/icons/activity.4.svg',
                [
                  ["Aucune astuce disponible","https://youtu.be/",],
                ],
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {},
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
                        'Management',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/stack-of-coins.svg',
                        width: 30,
                        height: 30,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget ressourcesBuilder(
      BuildContext context, String title, String image, List item) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => RessourcesItemBuilderScreen(
                  title: title,
                  item: item,
                )),
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
            SvgPicture.asset(
              image,
              width: 30,
              height: 30,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
