import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {Key? key,
      required this.icon,
      required this.subtitle,
      this.textColor = Colors.grey,
      this.cardColor = Colors.white})
      : super(key: key);
  final Icon icon;
  final String subtitle;
  final Color cardColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 125,
      child: Card(
        color: cardColor,
        margin: const EdgeInsets.fromLTRB(2, 4, 4, 4),
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              icon,
              const SizedBox(
                height: 30,
              ),
              Text(
                subtitle,
                style: TextStyle(color: textColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardTileIcon extends StatelessWidget {
  const CardTileIcon(
      {Key? key,
      required this.backgroundColor,
      required this.widget,
      required this.posicon})
      : super(key: key);
  final Color backgroundColor;
  final Widget widget;
  final Widget posicon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: backgroundColor,
          radius: 30,
          child: widget,
        ),
        Positioned(
          top: 35,
          right: 4,
          child: Container(
            height: 20,
            width: 20,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: posicon,
          ),
        )
      ],
    );
  }
}
