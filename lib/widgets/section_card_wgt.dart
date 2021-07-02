import 'package:flutter/material.dart';

class SectionCardWgt extends StatelessWidget {
  const SectionCardWgt({
    Key? key,
    required this.iconPath,
    this.title = "",
    this.subTitle = "lorem Ipsum",
    this.press,
  }) : super(key: key);

  final String iconPath;
  final String title;
  final String subTitle;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.indigo[900],
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                blurRadius: 10,
                spreadRadius: -5,
                color: Colors.blueGrey),
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  iconPath,
                  alignment: Alignment.topLeft,
                  fit: BoxFit.cover,
                  height: 75,
                  width: 75,
                ),
                Container(
                  padding: EdgeInsets.only(left: 4.0),
                  child: Text(
                    title,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 4.0),
                  child: Text(
                    subTitle,
                    style: TextStyle(color: Colors.indigoAccent, fontSize: 15),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
