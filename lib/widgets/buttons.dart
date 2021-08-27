import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';

class HeaderButton extends StatelessWidget {

  String title;
  Function onTap;
  HeaderButton({@required this.title, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 65,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,

          colors: [
            ArrivalTheme.gradientHighlight,
            ArrivalTheme.gradientBase,
          ],
        ),
        borderRadius: BorderRadius.circular(32.5),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(32.5),
        type: MaterialType.transparency,
        child: InkWell(
          borderRadius: BorderRadius.circular(32.5),
          onTap: onTap,
          highlightColor: Colors.transparent,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 23,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }

}