import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class RessourcesItemPageViewerScreen extends StatefulWidget {
  final String title;
  final String subTitle;
  final String link;

  const RessourcesItemPageViewerScreen({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.link,
  }) : super(key: key);

  @override
  State<RessourcesItemPageViewerScreen> createState() =>
      _RessourcesItemPageViewerScreenState();
}

class _RessourcesItemPageViewerScreenState
    extends State<RessourcesItemPageViewerScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.link)!,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

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
                  widget.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                // height: 30,
                width: double.maxFinite,
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Text(
                  widget.subTitle,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: MediaQuery.of(context).size.width,
                width: double.maxFinite,
                // padding: EdgeInsets.all(10.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: YoutubePlayer(
                  controller: _controller,
                  liveUIColor: Colors.amber,
                  showVideoProgressIndicator: true,
                ),
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.end,
                //   children: [
                //     Expanded(
                //       child: Center(
                //         child: Text(
                //           widget.link,
                //           textAlign: TextAlign.center,
                //           style: TextStyle(
                //             fontWeight: FontWeight.w500,
                //           ),
                //         ),
                //       ),
                //     ),
                //     Icon(
                //       Icons.file_download_outlined,
                //       size: 35,
                //       color: Colors.green,
                //     )
                //   ],
                // ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                // height: 30,
                width: double.maxFinite,
                padding: EdgeInsets.all(5.0),
                // alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Text(
                  'Regarder',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
