import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// ignore: must_be_immutable
class trailerwatch extends StatefulWidget {
  ////////////////تشغيل مقاطع اليوتيوب من خلال مفتاح الفديو
  var trailerytid;
  trailerwatch({this.trailerytid});

  @override
  State<trailerwatch> createState() => _trailerwatchState();
}

class _trailerwatchState extends State<trailerwatch> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    final videoid = YoutubePlayer.convertUrlToId(widget.trailerytid);
    _controller = YoutubePlayerController(
      initialVideoId: videoid.toString(),
      flags: const YoutubePlayerFlags(
        enableCaption: true,
        autoPlay: false,
        mute: false,
        // controlsVisibleAtStart: true,
        forceHD: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: YoutubePlayer(
        thumbnail: Image.network(
          //صورة الفديو
          "https://img.youtube.com/vi/" + widget.trailerytid + "/hqdefault.jpg",
          fit: BoxFit.cover,
        ),
        controlsTimeOut: const Duration(
            milliseconds: 1500), //اشارة ايقاف الفديو كم الوقت يلي ح تظهر فيه
        aspectRatio: 16 / 9, //نسبة الطول اللى العرض
        controller:
            _controller, //    هو ياخذ الرقم المعرف للفديو اللازم للتشغيل   اجباري
        showVideoProgressIndicator:
            true, // تظهر شريط  اسفل الفديو يعبر الوقت المتبقي كي ينتهي الفديو
        bufferIndicator: const Center(
          child: Center(
              child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
          )),
        ),
        progressIndicatorColor: Colors.red,
        bottomActions: [
          CurrentPosition(),
          ProgressBar(
              //شريط مدة الفديو
              isExpanded: true,
              colors: const ProgressBarColors(
                playedColor:
                    Colors.green, //جزء من شريط مدة الفديو التي تم انتهائه
                handleColor: Colors
                    .red, //الدائرة السوداء التي تظهرفي بداية شؤيط مدة الفديو
              )),
          RemainingDuration(), //يظهر في اسفل نهاية الفديو من اجل ان يعرض وقت الفديو
          FullScreenButton(), //زر يشبه المربع يظهر في اسفل نهاية الفديو لتكبير الفدية على حجم الشاشة
        ],
      ),
    );
  }
}
