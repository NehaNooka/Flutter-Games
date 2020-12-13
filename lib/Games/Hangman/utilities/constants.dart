import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

const kActionButtonTextStyle = TextStyle(
  fontSize: 25,
  color: Colors.white,
  fontWeight: FontWeight.w300,
  letterSpacing: 0.5,
);

Color kActionButtonColor = Colors.green[400];
const kActionButtonHighlightColor = Color(0xFF1089ff);

Color kWordButtonColor = Colors.green[400];
const kTooltipColor = Color(0xFF1089ff);

const kWordButtonTextStyle = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 27,
);


var kSuccessAlertStyle = AlertStyle(
  animationType: AnimationType.grow,
  isCloseButton: true,
  isOverlayTapDismiss: true,
  animationDuration: Duration(milliseconds: 500),
  backgroundColor: Colors.white,
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
  titleStyle: TextStyle(
    color: Colors.red[700],
    fontWeight: FontWeight.bold,
    fontSize: 30.0,
    letterSpacing: 1.5,
  ),
);
var kExitAlertStyle = AlertStyle(
  animationType: AnimationType.grow,
  isCloseButton: true,
  isOverlayTapDismiss: true,
  descStyle: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 27.0,
    letterSpacing: 2.0,
  ),
  animationDuration: Duration(milliseconds: 500),
  backgroundColor: Colors.white,
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
  titleStyle: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 27.0,
    letterSpacing: 2.0,
  ),
);

var kGameOverAlertStyle = AlertStyle(
  animationType: AnimationType.grow,
  isCloseButton: true,
  isOverlayTapDismiss: true,
  animationDuration: Duration(milliseconds: 450),
  backgroundColor: Colors.white,
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
  titleStyle: TextStyle(
    color: Colors.red,
    fontWeight: FontWeight.bold,
    fontSize: 30.0,
    letterSpacing: 1.5,
  ),
  descStyle: TextStyle(
    color: Colors.red,
    fontWeight: FontWeight.bold,
    fontSize: 25.0,
    letterSpacing: 1.5,
  ),
);

var kFailedAlertStyle = AlertStyle(
  animationType: AnimationType.grow,
  isCloseButton: true,
  isOverlayTapDismiss: true,
  animationDuration: Duration(milliseconds: 450),
  backgroundColor: Colors.white,
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
  titleStyle: TextStyle(
    color: Colors.red,
    fontWeight: FontWeight.bold,
    fontSize: 30.0,
    letterSpacing: 1.5,
  ),
);

const kDialogButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 25,
  fontWeight: FontWeight.w300,
  letterSpacing: 0.5,
);

const kWordTextStyle = TextStyle(
    fontSize: 57,
    color: Colors.white,
    fontFamily: 'FiraMono',
    letterSpacing: 8);

const kDialogButtonColor = Color(0x00000000);

const kWordCounterTextStyle =
    TextStyle(fontSize: 29.5, color: Colors.white, fontWeight: FontWeight.w900);
