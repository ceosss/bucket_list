import 'package:flutter/material.dart';

class Head extends StatelessWidget {
  const Head({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 40),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.centerLeft,
        child: Icon(
          Icons.supervised_user_circle,
          size: 40,
        ),
      ),
      SizedBox(height: 20),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              "Buckets",
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              "Edit Category",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.grey),
            )
          ],
        ),
      ),
      SizedBox(height: 20),
    ]);
  }
}
