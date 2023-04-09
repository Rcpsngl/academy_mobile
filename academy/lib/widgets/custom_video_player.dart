import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../constants/icons.dart';

class CustomVideoPlayer extends StatefulWidget {
  const CustomVideoPlayer({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
  late VideoPlayerController _controller;
  Widget? controls;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://rr1---sn-4g5ednkl.googlevideo.com/videoplayback?expire=1681088139&ei=KwozZNKcAtPjsAK6oK4Y&ip=216.131.116.202&id=o-AHB7FIGe5FXzPOST2YbOSSRpoaSvsxR5c_wH2T1-P_sG&itag=18&source=youtube&requiressl=yes&spc=99c5CZff2eLilB_DLkcvxXEdpLiE7hyCGalZ3SrqwQ&vprv=1&mime=video%2Fmp4&ns=yPbYsV8D_djB2MKrCesduAwM&gir=yes&clen=2431929&ratebypass=yes&dur=56.587&lmt=1670339567915028&fexp=24007246&c=WEB&txp=5319224&n=-4x8_GYH9nxiww&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRgIhAM6-bLwrL_LXr7amZ0SPDuCXY5DY3PNN1617gitwWlUeAiEA3N-5arKSAjs0b08_KFzzFkSxzZTLGo_dtv6ML9qKcQc%3D&redirect_counter=1&cm2rm=sn-aigezk7s&req_id=adff86955621a3ee&cms_redirect=yes&cmsv=e&mh=mR&mip=31.223.50.152&mm=34&mn=sn-4g5ednkl&ms=ltu&mt=1681066364&mv=m&mvi=1&pl=24&lsparams=mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRgIhAOgwgUyLRv1cH_55SY_9AWMiHdDJi_66VCmW9JjVeF11AiEAzszGbcnDmI9qS2K07ZUE0BzyDxjCvbAVXhb-jipA48Q%3D',
    )
      ..initialize().then((_) {
        setState(() {});
      })
      ..addListener(() {
        if (_controller.value.isPlaying) {
          controls = GestureDetector(
            onTap: () {
              setState(() {
                _controller.pause();
              });
            },
            child: Image.asset(
              icPause,
              height: 50,
            ),
          );
        } else if (_controller.value.position.inMilliseconds -
                _controller.value.duration.inMilliseconds <
            1) {
          setState(() {
            controls = GestureDetector(
              onTap: () {
                setState(() {
                  _controller.play();
                });
              },
              child: Image.asset(
                icLearning,
                height: 10,
              ),
            );
          });
        } else {
          controls = GestureDetector(
            onTap: () {
              setState(() {
                _controller.play();
              });
            },
            child: Image.asset(
              icLearning,
              height: 50,
            ),
          );
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: _controller.value.aspectRatio,
      child: Stack(
        children: [
          VideoPlayer(
            _controller,
          ),
          Positioned.fill(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [controls ?? Container()],
            ),
          )
        ],
      ),
    );
  }
}
