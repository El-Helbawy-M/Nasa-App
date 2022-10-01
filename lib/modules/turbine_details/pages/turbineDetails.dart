import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nasa_wind_app/helpers/colors.dart';
import 'package:nasa_wind_app/helpers/constraints.dart';
import 'package:nasa_wind_app/helpers/text_styles.dart';
import 'package:video_player/video_player.dart';

import '../../../componants/custom_icon.dart';
import '../../../helpers/images.dart';
import '../../../router/navigator.dart';

class TurbineDetailsPage extends StatefulWidget {
  const TurbineDetailsPage({Key? key}) : super(key: key);

  @override
  State<TurbineDetailsPage> createState() => _TurbineDetailsPageState();
}

class _TurbineDetailsPageState extends State<TurbineDetailsPage> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() {
    super.initState();

    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller =
        VideoPlayerController.asset("assets/images/vedio.mp4");

    _initializeVideoPlayerFuture = _controller.initialize().then((value) => setState((){
        Timer.periodic(Duration(microseconds: 500),(timer){_controller.play();});
    }));
    
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SizedBox(
          width: MediaQueryHelper.width,
          height: MediaQueryHelper.height,
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    SizedBox(
                      width: MediaQueryHelper.width,
                      height: 300,
                      child: FutureBuilder(
                        future: _initializeVideoPlayerFuture,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState == ConnectionState.done) {
                            // If the VideoPlayerController has finished initialization, use
                            // the data it provides to limit the aspect ratio of the video.
                            return VideoPlayer(_controller);
                          } else {
                            // If the VideoPlayerController is still initializing, show a
                            // loading spinner.
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 48, left: 24),
                      child: GestureDetector(
                          onTap: () => CustomNavigator.pop(),
                          child: customImageIconSVG(imageName: "left")),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Turbine Status",
                        style: AppTextStyles.w800
                            .copyWith(fontSize: 22, color: AppColors.secondColor),
                      ),
                      const SizedBox(height: 24),
                      const StatusItem(
                        title: "Wind Speed",
                        value: "28 km/s",
                      ),
                      const StatusItem(
                        title: "Direction",
                        value: "28 km/s",
                      ),
                      const StatusItem(
                        title: "Total Power",
                        value: "28 km/s",
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
}

class StatusItem extends StatelessWidget {
  const StatusItem({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppTextStyles.w600
                    .copyWith(fontSize: 14, color: AppColors.hint),
              ),
              Text(
                value,
                style: AppTextStyles.w600
                    .copyWith(fontSize: 14, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(height: 4),
          const Divider(
            height: 14,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
