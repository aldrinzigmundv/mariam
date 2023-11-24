import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Rosary {
  List<String> initializeRosary(BuildContext context, String chosenMystery) {
    String mystery = "";
    if (chosenMystery == AppLocalizations.of(context)!.joyfulMysteryOption) {
      mystery = "joyful";
    } else if (chosenMystery == AppLocalizations.of(context)!.sorrowfulMysteriesOption) {
      mystery = "sorrowful";
    } else if (chosenMystery == AppLocalizations.of(context)!.gloriousMysteriesOption) {
      mystery = "glorious";
    } else if (chosenMystery == AppLocalizations.of(context)!.mysteryOfLightOption) {
      mystery = "light";
    }
    
    List<String> rosary = <String>[];

    //First Prayers
    rosary.add(AppLocalizations.of(context)!.signOfTheCross);
    rosary.add(AppLocalizations.of(context)!.theApostlesCreed);
    rosary.add(AppLocalizations.of(context)!.theLordsPrayer);
    for (var i = 0; i < 3; i++) {
      rosary.add(AppLocalizations.of(context)!.hailMary);
    }
    rosary.add(AppLocalizations.of(context)!.gloryBe);
    rosary.add(AppLocalizations.of(context)!.fatimaPrayer);

    //First Mystery
    if (mystery == "joyful") {
      rosary.add(AppLocalizations.of(context)!.theAnnunciation);
    } else if (mystery == "sorrowful") {
      rosary.add(AppLocalizations.of(context)!.theAgonyInTheGarden);
    } else if (mystery == "glorious") {
      rosary.add(AppLocalizations.of(context)!.theResurrection);
    } else if (mystery == "light") {
      rosary.add(AppLocalizations.of(context)!.theBaptismOfJesusInTheRiverJordan);
    }
    rosary.add(AppLocalizations.of(context)!.theLordsPrayer);

    for (var i = 0; i < 10; i++) {
      rosary.add(AppLocalizations.of(context)!.hailMary);
    }
    rosary.add(AppLocalizations.of(context)!.gloryBe);
    rosary.add(AppLocalizations.of(context)!.fatimaPrayer);

    //Second Mystery
    if (mystery == "joyful") {
      rosary.add(AppLocalizations.of(context)!.theVisitation);
    } else if (mystery == "sorrowful") {
      rosary.add(AppLocalizations.of(context)!.theScourgingAtThePillar);
    } else if (mystery == "glorious") {
      rosary.add(AppLocalizations.of(context)!.theAscension);
    } else if (mystery == "light") {
      rosary.add(AppLocalizations.of(context)!.theWeddingFeastAtCana);
    }
    rosary.add(AppLocalizations.of(context)!.theLordsPrayer);

    for (var i = 0; i < 10; i++) {
      rosary.add(AppLocalizations.of(context)!.hailMary);
    }
    rosary.add(AppLocalizations.of(context)!.gloryBe);
    rosary.add(AppLocalizations.of(context)!.fatimaPrayer);

    //Third Mystery
    if (mystery == "joyful") {
      rosary.add(AppLocalizations.of(context)!.theNativity);
    } else if (mystery == "sorrowful") {
      rosary.add(AppLocalizations.of(context)!.theCrowningWithThorns);
    } else if (mystery == "glorious") {
      rosary.add(AppLocalizations.of(context)!.theComingOfTheHolySpirit);
    } else if (mystery == "light") {
      rosary.add(AppLocalizations.of(context)!.theProclamationOfTheKingdomOfGod);
    }
    rosary.add(AppLocalizations.of(context)!.theLordsPrayer);

    for (var i = 0; i < 10; i++) {
      rosary.add(AppLocalizations.of(context)!.hailMary);
    }
    rosary.add(AppLocalizations.of(context)!.gloryBe);
    rosary.add(AppLocalizations.of(context)!.fatimaPrayer);

    //Fourth Mystery
    if (mystery == "joyful") {
      rosary.add(AppLocalizations.of(context)!.thePresentation);
    } else if (mystery == "sorrowful") {
      rosary.add(AppLocalizations.of(context)!.theCarryingOfTheCross);
    } else if (mystery == "glorious") {
      rosary.add(AppLocalizations.of(context)!.theAssumptionOfMary);
    } else if (mystery == "light") {
      rosary.add(AppLocalizations.of(context)!.theTransfigurationOfJesus);
    }
    rosary.add(AppLocalizations.of(context)!.theLordsPrayer);

    for (var i = 0; i < 10; i++) {
      rosary.add(AppLocalizations.of(context)!.hailMary);
    }
    rosary.add(AppLocalizations.of(context)!.gloryBe);
    rosary.add(AppLocalizations.of(context)!.fatimaPrayer);

    //Fifth Mystery
    if (mystery == "joyful") {
      rosary.add(AppLocalizations.of(context)!.theFindingOfJesusInTheTemple);
    } else if (mystery == "sorrowful") {
      rosary.add(AppLocalizations.of(context)!.theCrucifixion);
    } else if (mystery == "glorious") {
      rosary.add(AppLocalizations.of(context)!.theCoronationOfMary);
    } else if (mystery == "light") {
      rosary.add(AppLocalizations.of(context)!.theInstitutionOfTheEucharist);
    }
    rosary.add(AppLocalizations.of(context)!.theLordsPrayer);

    for (var i = 0; i < 10; i++) {
      rosary.add(AppLocalizations.of(context)!.hailMary);
    }
    rosary.add(AppLocalizations.of(context)!.gloryBe);
    rosary.add(AppLocalizations.of(context)!.fatimaPrayer);

    rosary.add(AppLocalizations.of(context)!.hailHolyQueen);
    rosary.add(AppLocalizations.of(context)!.concludingPrayer);

    return rosary;
  }
}
