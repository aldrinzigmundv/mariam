import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:mariam/services/routing.dart';

class PrayerPage extends StatefulWidget {
  const PrayerPage(
      {super.key,
      required this.rosary,
      required this.index,
      required this.image});

  final List<String> rosary;
  final int index;
  final String image;

  @override
  State<PrayerPage> createState() => _PrayerPageState();
}

class _PrayerPageState extends State<PrayerPage> {
  late List<String> rosary;
  late int index;

  _navigateBack() {
    Navigator.pop(context);
  }

  _navigateNext() {
    String image = "";
    if (index < 79) {
      if (rosary[index + 1] == AppLocalizations.of(context)!.theApostlesCreed) {
        image = 'assets/images/apostlescreed.jpg';
      } else if (rosary[index + 1] ==
          AppLocalizations.of(context)!.theLordsPrayer) {
        image = 'assets/images/thelordsprayer.jpg';
      } else if (rosary[index + 1] == AppLocalizations.of(context)!.hailMary) {
        image = 'assets/images/hailmary.jpg';
      } else if (rosary[index + 1] == AppLocalizations.of(context)!.gloryBe) {
        image = 'assets/images/glorybe.jpg';
      } else if (rosary[index + 1] ==
          AppLocalizations.of(context)!.fatimaPrayer) {
        image = 'assets/images/fatimaprayer.jpg';
      } else if (rosary[index + 1] ==
          AppLocalizations.of(context)!.hailHolyQueen) {
        image = 'assets/images/hailmary.jpg';
      } else {
        image = 'assets/images/mystery.jpg';
      }
      goToOrNextPrayerPage(
          context: context, index: index + 1, rosary: rosary, image: image);
    } else {
      goToThankYouPage(context: context);
    }
  }

  _goToMainPage(BuildContext context) {
    goToMainPage(context: context);
  }

  @override
  void initState() {
    super.initState();
    rosary = widget.rosary;
    index = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF2B4593),
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text('${index + 1} of 80'),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.9),
                    BlendMode.srcOver,
                  ))),
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: SelectableText(
                  rosary[index],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: const EdgeInsets.all(9.0),
                child: IconButton(
                  icon: const Icon(Icons.navigate_before, color: Colors.white),
                  onPressed: () => _navigateBack(),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFF2B4593)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  ),
                )),
                Padding(
                padding: const EdgeInsets.all(9.0),
                child: IconButton(
                  icon: const Icon(Icons.home, color: Colors.white),
                  onPressed: () => _goToMainPage(context),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFF2B4593)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.all(9.0),
                child: IconButton(
                  icon: const Icon(Icons.navigate_next, color: Colors.white),
                  onPressed: () => _navigateNext(),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFF2B4593)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ],
    );
  }
}
