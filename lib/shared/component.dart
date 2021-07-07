import 'package:flutter/material.dart';

Widget BuildItemBuilder(list, context)
{

  return Column(
    children: [
      Padding(
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              '${list["name"]}',
              style: TextStyle(color: Colors.amber[500]),
            ),
            Spacer(),
            Column(
              children: [
                Text(
                  '${(list["main"]["temp"] - 273.15).toStringAsFixed(1)}°C',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.5,
                  ),
                ),
                Text(
                  '${list["weather"][0]["description"]}',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w100,
                    letterSpacing: 1.5,
                    fontFamily: 'ayaah',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ],
  );
}

Widget BuildSeparatorBuilder() => Container(
      height: 1,
      width: double.infinity,
      color: Colors.white10,
    );
