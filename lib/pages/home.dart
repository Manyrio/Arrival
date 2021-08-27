import 'package:flutter/material.dart';

import 'package:smooth_scroll_web/smooth_scroll_web.dart';
import 'package:slide_countdown_clock/slide_countdown_clock.dart';

import 'home/landing.dart';
import 'home/description.dart';
import 'home/layout.dart';

import 'package:flutter_app/constants.dart';

import 'package:flutter_app/widgets/app_bar.dart';
import 'package:flutter_app/widgets/footer.dart';
import 'package:flutter_app/widgets/background.dart';
import 'package:flutter_app/widgets/buttons.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  ScrollController controller = ScrollController();

  Widget _buildBottomBar() {
    return Container(
      padding: EdgeInsets.only(bottom: 20, left: 20, right: 20, top: 30),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0, 0),
            end: Alignment(0, .9),
            colors: [
              ArrivalTheme.backgroundColor.withOpacity(0),
              ArrivalTheme.backgroundColor,
            ],
          )
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Arrival",
                  maxLines: 1, softWrap: true, overflow: TextOverflow.clip,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SlideCountdownClock(
                  duration: DateTime.utc(2021, 9, 30, 20, 30).difference(DateTime.now()),
                  slideDirection: SlideDirection.Down,
                  separator: ":",
                  shouldShowDays: true,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  onDone: () {},
                )
              ],
            ),
          ),
          HeaderButton(title: 'Billeterie', onTap: () {

          },),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomBar(),
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: ArrivalAppBar(),
      ),
      backgroundColor: ArrivalTheme.backgroundColor,
      body: Stack(
        children: [
          Positioned.fill(
            child: VideoPlayerBackground(),
          ),
          Positioned.fill(
            child: SmoothScrollWeb(
              child: ListView(
                  controller: controller,
                  padding: EdgeInsets.zero,
                  children: [
                    HomeLanding(),
                    HomeDescription(),
                    HomeLayout(),
                    ArrivalFooter(),
                  ]
              ),
              controller: controller,
            ),
          ),
        ],
      ),
    );
  }

}