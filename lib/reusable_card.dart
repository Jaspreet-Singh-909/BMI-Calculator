import 'package:flutter/material.dart';
class ReusableCard extends StatefulWidget {
  ReusableCard({@required this.colour, this.cardChild, this.onPress});
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  _ReusableCardState createState() => _ReusableCardState();
}

class _ReusableCardState extends State<ReusableCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPress,
      child: Container(
        child: widget.cardChild,
        height: 200.0,
        width: 190.0,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: widget.colour,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}