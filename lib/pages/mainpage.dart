import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:widget_zoom/widget_zoom.dart';

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
  String _selectedMystery = '';
  List<String> _mysteries = <String>[];

  String _selectedLanguage = '🇺🇸 English';
  final List<String> _languages = <String>[
    '🇺🇸 English',
    '🇻🇦 Latina',
    '🇪🇸 Español',
    '🇵🇭 Pilipino',
  ];

  _resetLocale() {
    Locale newLocale;
    switch (_selectedLanguage) {
      case '🇺🇸 English':
        newLocale = const Locale('en');
        break;
      case '🇻🇦 Latina':
        newLocale = const Locale('la');
        break;
      case '🇪🇸 Español':
        newLocale = const Locale('es');
        break;
      case '🇵🇭 Pilipino':
        newLocale = const Locale('fil');
        break;
      default:
        newLocale = const Locale('en');
    }
    MyApp.setLocale(context, newLocale);
  }

  _letUsPray() {
    String mystery = "";
    if (_selectedMystery == AppLocalizations.of(context)!.joyfulMysteryOption) {
      mystery = "joyful";
    } else if (_selectedMystery ==
        AppLocalizations.of(context)!.sorrowfulMysteriesOption) {
      mystery = "sorrowful";
    } else if (_selectedMystery ==
        AppLocalizations.of(context)!.gloriousMysteriesOption) {
      mystery = "glorious";
    } else if (_selectedMystery ==
        AppLocalizations.of(context)!.mysteryOfLightOption) {
      mystery = "light";
    }
    List<String> newRosary = rosary.initializeRosary(context, mystery);
    goToOrNextPrayerPage(
        context: context,
        index: 0,
        rosary: newRosary,
        selectedMystery: mystery,
        image: 'assets/images/prayers/Hendrick_van_balen_Holy_trinity.jpg');
  }

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
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: const AssetImage(
                      'assets/images/Virgen_del_Rosario,_de_Domingo_Martínez_(Museo_de_Bellas_Artes_de_Sevilla).jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.9),
                    BlendMode.srcOver,
                  ))),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Card(
                        child: WidgetZoom(
                            heroAnimationTag: 'image',
                            zoomWidget: Image.asset(
                                'assets/images/Virgen_del_Rosario,_de_Domingo_Martínez_(Museo_de_Bellas_Artes_de_Sevilla).jpg')),
                      ),
                    ),
                  ),
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
