import 'dart:io';

import 'package:flutter/material.dart';
import 'package:translate_app/core/utilities/colors/AppColors.dart';

class BottomPicker extends StatelessWidget {
  Color backgroundColor;
  Color iconColor;
  TextStyle? textStyle;

  final String fromLanguage;
  final String toLanguage;
  final Function() fromLanguagePicker;
  final Function() toLanguagePicker;

  BottomPicker({
    super.key,
    this.textStyle = const TextStyle(color: Colors.black),
    this.iconColor = Colors.white,
    this.backgroundColor = Colors.white,
    required this.fromLanguage,
    required this.toLanguage,
    required this.fromLanguagePicker,
    required this.toLanguagePicker
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: Platform.isAndroid ? 16 : 0
        ),
        color: Colors.transparent,
        child: BottomAppBar(
          notchMargin: 10,
          color: Colors.transparent,
          elevation: 0.0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 75.0,
                  spreadRadius: 2.0,
                  offset: Offset(
                    15.0,
                    15.0,
                  ),
                )
              ],
              color: backgroundColor,
            ),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                pickerItem(
                  context,
                  fromLanguage,
                  onTap: () => fromLanguagePicker(),
                ),
                SizedBox(
                  width: 50,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.swap_horiz,
                      size: 30,
                      color: iconColor,
                    ),
                  )
                ),
                pickerItem(
                  context,
                  toLanguage,
                  onTap: () => toLanguagePicker(),
                ),
              ],
            ),
          ),
        )
    );
  }

  Widget pickerItem(BuildContext context, String language, {Function() ? onTap}){
    return Expanded(
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
                language,
                textAlign: TextAlign.center,
                style: textStyle,
            ),
          )
        )
    );
  }
}
