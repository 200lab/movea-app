import 'package:flutter/material.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'date_button.dart';

class TimeButton extends StatefulWidget {
  final double height;
  final double width;
  final String time;
  final TicketStates ticketState;

  
  const TimeButton({Key? key,required this.height,
    required this.width,
    required this.time,
    required this.ticketState,}) : super(key: key);

  @override
  _TimeButtonState createState() => _TimeButtonState();
}

class _TimeButtonState extends State<TimeButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          alignment: Alignment.center,
          height: widget.height/14,
          width: widget.width/4,
          decoration: widget.ticketState == TicketStates.Active
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  gradient: LinearGradient(
                    colors: [GradientPalette.blue1, GradientPalette.blue2],
                  ))
              : BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: widget.ticketState == TicketStates.Idle
                      ? DarkTheme.greyBackground
                      : DarkTheme.darkBackground),
          child: Text(
            widget.time,
            style: TxtStyle.heading3Medium,
          ),
        ),
      ),
    );
  }
}
