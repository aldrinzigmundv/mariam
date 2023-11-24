import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:mariam/services/routing.dart';

class ThankYouPage extends StatelessWidget {
  const ThankYouPage({super.key});

  _copyBitcoinAddress(context) {
    Clipboard.setData(const ClipboardData(
        text:
            'bc1qruus6vnxrww6pqac3hvg6vsepmqv8d66dwjm59'));
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Bitcoin Address copied to clipboard."),
      duration: Duration(seconds: 2),
    ));
  }

  _copyMoneroAddress(context) {
    Clipboard.setData(const ClipboardData(
        text:
            '86cQoPfKTJ2bRfGH5Ts2kzaXCRcVRiX8CUHKc9xmeUmQ8YM8Uzk9S97T5gQaqYu58C9wuFK7opDH7cM9EJyR4V5LAq9RGv4'));
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Monero Address copied to clipboard."),
      duration: Duration(seconds: 2),
    ));
  }

  _goToHomePressed(BuildContext context) {
    goToMainPage(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: const AssetImage('assets/images/thankyou.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.9),
                    BlendMode.srcOver,
                  ))),
          child: const Center(
            child: SingleChildScrollView(
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.all(9.0),
                  child: SelectableText(
                    'Thank You For Praying',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(9.0),
                  child: SelectableText(
                    '"Say the Rosary everyday to obtain peace for the world." ~ Our Lady of Fatima, 1917',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 13.0,),
                Padding(
                  padding: EdgeInsets.all(9.0),
                  child: SelectableText(
                    'This app is powered by aldrinzigmund.com',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(9.0),
            child: ElevatedButton(
                onPressed: () => _goToHomePressed(context),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xFF2B4593)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(13.0),
                  child: Text('Go To Home',
                      style: TextStyle(color: Colors.white, fontSize: 21)),
                ))),
      ),
    );
  }
}
