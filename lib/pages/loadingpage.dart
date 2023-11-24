import 'package:flutter/material.dart';

import 'package:mariam/services/routing.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  _startup() async {
    Future.delayed(const Duration(seconds: 1), () async {
      goToMainPage(context: context);
    });
  }

  @override
  void initState() {
    super.initState();
    _startup();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B4593),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.all(9.0),
              child: Image.asset('assets/icons/icon.png')),
          const Padding(
            padding: EdgeInsets.all(9.0),
            child: Text(
              'Mariam',
              style: TextStyle(color: Colors.white, fontSize: 27.0),
            ),
          )
        ],
      )),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(13.0),
        child: SelectableText('Powered by aldrinzigmund.com', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 15.0)),
      ),
    );
  }
}
