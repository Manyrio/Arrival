import 'package:flutter/material.dart';

import 'dart:math';

import 'package:flutter_app/constants.dart';

import 'package:flutter_app/models/icons.dart';

import 'package:cached_network_image/cached_network_image.dart';

class HomeLayout extends StatefulWidget {
  HomeLayout({Key key}) : super(key: key);

  @override
  _HomeLayout createState() => _HomeLayout();
}

class _HomeLayout extends State<HomeLayout> {

  String photoUrl = 'data:image/jpeg;base64,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';

  Widget informationTile({IconData icon, String title: '', var onTap, String subTitle: ''}) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 30),
          child: Row(
              children: [
                Container(
                    width: 60, height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.2),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(child: Icon(icon, color: Colors.white.withOpacity(.8), size: 30))
                ),
                SizedBox(width: 20),
                Expanded(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                      style: TextStyle(fontSize: 22, color: Colors.white.withOpacity(1)),
                      textAlign: TextAlign.left, maxLines: 1,),
                    Text(subTitle,
                      style: TextStyle(fontSize: 16, color: Colors.white.withOpacity(.7)),
                      textAlign: TextAlign.left, maxLines: 1,),
                  ],
                )),
              ]
          ),
        ),
      ),
    );
  }

  Widget informationUsers(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: (){},
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 30),
          child: Row(
              children: [
                Container(
                    width: 60, height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.2),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(child: Icon(ArrivalIcons.team_line, color: Colors.white.withOpacity(.8), size: 30))
                ),
                SizedBox(width: 15),
                Expanded(child: listUsersMessage(context, List.generate(7, (index) => photoUrl), Size.square(50)),),
              ]
          ),
        ),
      ),
    );
  }

  Widget listUsersMessage(BuildContext context, List<String> photoUrls, Size size) {

    List<Widget> listStack = [];

    int index = 0;
    photoUrls.sublist(0, min(photoUrls.length, 7))
        .forEach(
            (u) {
          listStack.add(Positioned(
            left: index * (size.width/1.25),
            child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ArrivalTheme.backgroundColor
                ),
                padding: EdgeInsets.all(5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(size.width/2),
                  child: CachedNetworkImage(
                    placeholder: (context, url) => Container(),
                    imageUrl: photoUrls[index],
                    width: size.width-10,
                    height: size.height-10,
                    fit: BoxFit.cover,
                  ),
                )
            ),
          ));
          index = index + 1;
        }
    );

    return Container(
      width: min(photoUrls.length-2, 7)*(size.width/1.25) + size.width,
      height: size.height,
      child: Stack(
        children: listStack,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ArrivalTheme.backgroundColor,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          informationTile(
            title: "Vendredi 23 octobre",
            subTitle: "Appuyer pour ajouter au calendrier",
            onTap: () {},
            icon: ArrivalIcons.calendar_event_line,
          ),

          informationTile(
            title: "33 Avenue de la Porte d\'Aubervilliers, 75018 Paris",
            subTitle: 'Afficher sur Google Maps',
            onTap: () async {
            },
            icon: ArrivalIcons.map_pin_2_line,
          ),

          informationUsers(context),
        ],
      ),
    );
  }

}