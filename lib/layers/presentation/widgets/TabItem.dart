import 'package:flutter/material.dart';
import 'package:translate_app/core/utilities/colors/AppColors.dart';

class TabItem extends StatelessWidget{
  Color? iconColor;
  Color? titleColor;

  final IconData icon;
  final String title;

  TabItem({
    super.key,
    this.iconColor = Colors.black26,
    this.titleColor = Colors.black26,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            //color: iconColor,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              // style: TextStyle(
              //   color: titleColor,
              // ),
            ),
          )
        ],
      ),
    );
  }
}