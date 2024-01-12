import 'package:flutter/material.dart';

import 'package:widget_zoom/widget_zoom.dart';

import 'package:mariam/services/rosary.dart';
import 'package:mariam/services/routing.dart';

class PrayerPage extends StatefulWidget {
  const PrayerPage(
      {super.key,
      required this.rosary,
      required this.selectedMystery,
      required this.index,
      required this.image});

  final List<String> rosary;
  final String selectedMystery;
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
    if (index < 79) {
      String image = "";
      image = Rosary()
          .getImage(context, rosary, index, widget.selectedMystery);
      goToOrNextPrayerPage(
          context: context,
          index: index + 1,
          rosary: rosary,
          selectedMystery: widget.selectedMystery,
          image: image);
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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Card(
                        child: WidgetZoom(
                            heroAnimationTag: widget.index.toString(),
                            zoomWidget: Image.asset(widget.image)),
                      ),
                    ),
                  ),
                  Padding(
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
                ],
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
