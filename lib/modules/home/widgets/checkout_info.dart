import 'package:flutter/material.dart';
import 'package:movea_app/config/themes/text_style.dart';

class CheckoutInfo extends StatelessWidget {
  const CheckoutInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> title = [
      'ID Order',
      'Cinema',
      'Date And Time',
      'Seat Number',
      'Price',
    ];

    List<String> value = [
      '000-000-00',
      'FX Sudirman XXI',
      'Sun May 22,  16:40',
      'D7,D8,D9',
      'VND 50.000 x 3',
    ];
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: title
                  .map((title) => Builder(builder: (context) {
                        return Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text(
                            title,
                            style: TxtStyle.heading4Light,
                          ),
                        );
                      }))
                  .toList(),
            ),
          ),
          Expanded(
            child: Column(
              children: value
                  .map((value) => Builder(builder: (context) {
                        return Container(
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text(
                            value,
                            style: TxtStyle.heading4,
                          ),
                        );
                      }))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
