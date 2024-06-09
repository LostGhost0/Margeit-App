import 'package:flutter/material.dart';
import 'package:marge_it_app/Pages/sign_up_page.dart';

import 'package:video_player/video_player.dart';



class VideoSplashScreen extends StatefulWidget {
  @override
  _VideoSplashScreenState createState() => _VideoSplashScreenState();
}

class _VideoSplashScreenState extends State<VideoSplashScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('lib/assets/splash.mp4')
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });

    // Navigate to the WelcomeScreen after 4 seconds
    Future.delayed(Duration(seconds:6), () {
      if (_controller.value.isInitialized) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => WelcomeScreen()),
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _skipVideo() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => WelcomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: _controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                : CircularProgressIndicator(),
          ),
          Positioned(
            top: 40.0,
            right: 20.0,
            child: ElevatedButton(
              onPressed: _skipVideo,
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text('Skip'),
            ),
          ),
        ],
      ),
    );
  }
}


