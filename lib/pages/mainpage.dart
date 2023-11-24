import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:mariam/main.dart';
import 'package:mariam/services/rosary.dart';
import 'package:mariam/services/routing.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  
  Rosary rosary = Rosary();

  _letUsPray() {
    List<String> newRosary = rosary.initializeRosary(context, _selectedMystery);
    goToOrNextPrayerPage(context: context, index: 0, rosary: newRosary, image: 'assets/images/signofthecross.jpg');
  }
  
  String _selectedLanguage = '🇺🇸 English';
  final List<String> _languages = <String>[
    '🇺🇸 English',
    '✝️ Latina',
    '🇪🇸 Español',
    '🇵🇭 Pilipino',
  ];

  _resetLocale() {
    Locale newLocale;
    switch (_selectedLanguage) {
      case '🇺🇸 English':
        newLocale = const Locale('en');
        break;
      case '✝️ Latina':
        newLocale = const Locale('la');
      case '🇪🇸 Español':
        newLocale = const Locale('es');
      case '🇵🇭 Pilipino':
        newLocale = const Locale('fil');
      default:
        newLocale = const Locale('en');
    }
    MyApp.setLocale(context, newLocale);
  }

  String _selectedMystery = '';
  List<String> _mysteries = <String>[];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _selectedMystery = AppLocalizations.of(context)!.joyfulMysteryOption;
    _mysteries = <String>[
      AppLocalizations.of(context)!.joyfulMysteryOption,
      AppLocalizations.of(context)!.sorrowfulMysteriesOption,
      AppLocalizations.of(context)!.gloriousMysteriesOption,
      AppLocalizations.of(context)!.mysteryOfLightOption,
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mariam'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF2B4593),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: DropdownMenu(
                  width: MediaQuery.of(context).size.width - 18.0,
                  initialSelection: _selectedLanguage,
                  dropdownMenuEntries: _languages.map((String value) {
                    return DropdownMenuEntry(
                      value: value,
                      label: value,
                    );
                  }).toList(),
                  onSelected: (String? newValue) {
                    setState(() {
                      _selectedLanguage = newValue!;
                    });
                    _resetLocale();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: DropdownMenu(
                  width: MediaQuery.of(context).size.width - 18.0,
                  initialSelection: _selectedMystery,
                  dropdownMenuEntries: _mysteries.map((String value) {
                    return DropdownMenuEntry(
                      value: value,
                      label: value,
                    );
                  }).toList(),
                  onSelected: (String? newValue) {
                    setState(() {
                      _selectedMystery = newValue!;
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 13.0,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(9.0),
          child: ElevatedButton(
              onPressed: () => _letUsPray(),
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
                child: Text('Let Us Pray',
                    style: TextStyle(color: Colors.white, fontSize: 21)),
              ))),
    );
  }
}
