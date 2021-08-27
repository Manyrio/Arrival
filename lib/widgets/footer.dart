import 'package:flutter/material.dart';

import 'package:flutter_app/constants.dart';

class ArrivalFooter extends StatefulWidget {
  ArrivalFooter({Key key}) : super(key: key);

  @override
  _ArrivalFooter createState() => _ArrivalFooter();
}

class _ArrivalFooter extends State<ArrivalFooter> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ArrivalTheme.backgroundColor,
      child: Column(
        children: [
          SizedBox(height: 40,),
          Container(
              height: 80,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SelectableText(
                        'Billeterie',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: ArrivalTheme.primaryColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SelectableText(
                        'Contact',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: ArrivalTheme.primaryColor),
                      ),
                    ),
                  ])
          ),
          Divider(height: 1, color: Colors.white.withOpacity(.05), thickness: 1,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: SelectableText(
                    'Copyright \u00a9 2021, ARRIVAL Tous droits réservés, Powered by HiCards',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.white.withOpacity(.7)
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 100,)
        ],
      ),
    );
  }

}