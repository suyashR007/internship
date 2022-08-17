import 'package:flutter/material.dart';
import 'package:internship/widgets/display_card.dart';

List<DisplayCard> displayCardlist = const [
  DisplayCard(
    bgColor: Color.fromARGB(255, 251, 103, 103),
    headline: 'Attendance',
    secondaryText: 'Working hours execeeded by 3 hours',
    centerText: '12/40',
    barColor: Color.fromARGB(255, 255, 157, 157),
  ),
  DisplayCard(
    bgColor: Color.fromARGB(255, 251, 226, 103),
    headline: 'Assignments',
    secondaryText: 'Excellent result',
    centerText: '30%',
    barColor: Color.fromARGB(255, 243, 204, 9),
  ),
  DisplayCard(
    bgColor: Color.fromARGB(255, 28, 63, 220),
    headline: 'Attendence',
    secondaryText: 'Excellent Result',
    centerText: '30%',
    barColor: Colors.white,
  ),
];
