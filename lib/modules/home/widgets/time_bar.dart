import 'package:flutter/material.dart';
import 'package:movea_app/widgets/stful/date_button.dart';
import 'package:movea_app/widgets/stful/time_button.dart';

class TimeBar extends StatefulWidget {
  final double height;
  final double width;
  const TimeBar({Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  _TimeBarState createState() => _TimeBarState();
}

class _TimeBarState extends State<TimeBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            TimeButton(
              height: widget.height,
              width: widget.width,
              time: '12 : 20',
              ticketState: TicketStates.Busy,
            ),
            TimeButton(
              height: widget.height,
              width: widget.width,
              time: '14 : 30',
              ticketState: TicketStates.Active,
            ),
            TimeButton(
              height: widget.height,
              width: widget.width,
              time: '16 : 40',
              ticketState: TicketStates.Idle,
            ),
            TimeButton(
              height: widget.height,
              width: widget.width,
              time: '19 : 00',
              ticketState: TicketStates.Busy,
            ),
          ],
        ),
      ),
    );
  }
}
