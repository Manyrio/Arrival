import 'package:flutter/material.dart';

import 'package:flutter_app/constants.dart';
import './/widgets/buttons.dart';

class HomeDescription extends StatefulWidget {
  HomeDescription({Key key}) : super(key: key);

  @override
  _HomeDescription createState() => _HomeDescription();
}

class _HomeDescription extends State<HomeDescription> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: MediaQuery.of(context).size.width,
      color: ArrivalTheme.backgroundColor,
      padding: EdgeInsets.only(left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SelectableText(
            "Arrival ? Qu'est ce que c'est ? 🤔",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 35,
                color: ArrivalTheme.primaryColor,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1, 0),
                    color: Color.fromARGB(200, 0, 0, 0),
                  ),
                ]),
          ),
          SizedBox(height: 30),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: 'Arrival',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: ArrivalTheme.primaryColor
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: ' est le nouvel évènement destiné aux ',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: ArrivalTheme.primaryColor.withOpacity(.8)
                      )
                  ),
                  TextSpan(
                      text: 'étudiants',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: ArrivalTheme.primaryColor
                      )
                  ),
                  TextSpan(
                      text: ' en quête d’',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: ArrivalTheme.primaryColor.withOpacity(.8)
                      )
                  ),
                  TextSpan(
                      text: 'une expérience unique',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: ArrivalTheme.primaryColor
                      )
                  ),
                  TextSpan(
                      text: ' : une soirée regroupant ',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: ArrivalTheme.primaryColor.withOpacity(.8)
                      )
                  ),
                  TextSpan(
                      text: 'toutes les écoles en plein Paris !',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: ArrivalTheme.primaryColor
                      )
                  ),
                ]
            ),
          )
        ],
      ),
    );
  }

}