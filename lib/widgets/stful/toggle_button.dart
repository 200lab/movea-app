import 'package:flutter/cupertino.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/widgets/stful/date_button.dart';

class ToggleButton extends StatefulWidget {
  final Widget child;
  const ToggleButton({Key? key, required this.child}) : super(key: key);

  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  TicketStates ticketStates = TicketStates.Idle;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: () {
        setState(() {
          ticketStates = ticketStates == TicketStates.Idle
              ? TicketStates.Active
              : TicketStates.Idle;
        });
      },
      child: Container(
        decoration: ticketStates == TicketStates.Idle
            ? BoxDecoration(
                color: DarkTheme.darkBackground,
                borderRadius: BorderRadius.circular(10))
            : BoxDecoration(
              gradient: LinearGradient(colors: [
                GradientPalette.blue1,
                GradientPalette.blue2
              ]),
                borderRadius: BorderRadius.circular(10)),
        child: widget.child
      ),
    ));
  }
}


