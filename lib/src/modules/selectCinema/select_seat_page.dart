import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../config/app_color.dart';
import '../../config/text_style.dart';
import '../../constants/asset_path.dart';
import '../../models/movie.dart';

class SelectSeatPage extends StatelessWidget {
  const SelectSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 16, top: 4),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const FaIcon(
                  FontAwesomeIcons.arrowLeft,
                  color: DarkTheme.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16, left: 24),
              child: Text(
                'Ralph Breaks The Internet',
                style: TxtStyle.heading3,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8, left: 24),
              child: Text(
                'FX Sudirman XXI',
                style: TxtStyle.heading4Light,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildTypeBox(DarkTheme.darkBackground, 'Available'),
                  buildTypeBox(DarkTheme.greyBackground, 'Booked'),
                  buildTypeBox(DarkTheme.blueMain, 'Your Seat'),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: seatRow
                      .map((row) => Builder(builder: (context) {
                            return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: seatNumber.map((number) {
                                  return SizedBox(
                                    width: 48,
                                    height: 48,
                                    child: ToggleButton(
                                        child: Center(
                                            child: Text(
                                      row + number,
                                      style: TxtStyle.heading3Medium,
                                    ))),
                                  );
                                }).toList());
                          }))
                      .toList(),
                ),
              ),
            ),
            Container(
                alignment: Alignment.center,
                child: const Text(
                  'Screen',
                  style: TxtStyle.heading4Light,
                )),
            Image.asset(AssetPath.screenx2),
            Padding(
              padding: const EdgeInsets.only(bottom: 16, left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Total Price',
                        style: TxtStyle.heading4Light,
                      ),
                      Text(
                        'VND 150.000',
                        style: TxtStyle.heading3Medium,
                      )
                    ],
                  ),
                  Container(
                    width: size.width / 3,
                    height: size.height / 16,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: DarkTheme.blueMain,
                        borderRadius: BorderRadius.circular(14)),
                    child: const Text(
                      'Book Ticket',
                      style: TxtStyle.heading3,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildTypeBox(Color color, String content) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 5),
          height: 24,
          width: 24,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(4)),
        ),
        Text(
          content,
          style: TxtStyle.heading4,
        ),
      ],
    );
  }
}

class ToggleButton extends StatefulWidget {
  final Widget child;

  const ToggleButton({Key? key, required this.child}) : super(key: key);

  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  TicketStates ticketStates = TicketStates.idle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: () {
        setState(() {
          ticketStates = ticketStates == TicketStates.idle
              ? TicketStates.active
              : TicketStates.idle;
        });
      },
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ticketStates == TicketStates.idle
                  ? DarkTheme.darkBackground
                  : DarkTheme.blueMain),
          child: widget.child),
    ));
  }
}
