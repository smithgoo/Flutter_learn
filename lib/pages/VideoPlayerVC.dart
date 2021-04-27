import 'package:flutter/material.dart';
import 'package:flutter_ijkplayer/flutter_ijkplayer.dart';

class VideoPlayerVC extends StatefulWidget {
  @override
  _VideoPlayerVCState createState() => _VideoPlayerVCState();
}

class _VideoPlayerVCState extends State<VideoPlayerVC> {
  IjkMediaController controller = IjkMediaController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        // width: MediaQuery.of(context).size.width,
        // height: 400,
        child: ListView(children: <Widget>[
          buildIjkPlayer(),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () async {
          await controller.setNetworkDataSource(
              // 'https://vod3.buycar5.cn/20210330/yCdECK2p/index.m3u8',
              // 'rtmp://172.16.100.245/live1',
              // 'https://www.sample-videos.com/video123/flv/720/big_buck_bunny_720p_10mb.flv',
              "https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4",
              // 'http://184.72.239.149/vod/smil:BigBuckBunny.smil/playlist.m3u8',
              // "file:///sdcard/Download/Sample1.mp4",
              autoPlay: true);
          print("set data source success");
          // controller.playOrPause();
        },
      ),
    );
  }

  Widget buildIjkPlayer() {
    return Container(
      // height: 400, // 这里随意
      child: IjkPlayer(
        mediaController: controller,
      ),
    );
  }
}
