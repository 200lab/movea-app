import 'package:flutter/cupertino.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/widgets/stful/date_button.dart';

class AmountBox extends StatefulWidget {
  final String amount;
  const AmountBox({Key? key, required this.amount}) : super(key: key);

  @override
  _AmountBoxState createState() => _AmountBoxState();
}

class _AmountBoxState extends State<AmountBox> {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'IDR',
              style: TxtStyle.heading3Light,
            ),
            Text(
              widget.amount,
              style: TxtStyle.heading3,
            )
          ],
        ),
      ),
    ));
  }
}
