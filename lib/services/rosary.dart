import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Rosary {
  List<String> initializeRosary(BuildContext context, String mystery) {
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
      rosary
          .add(AppLocalizations.of(context)!.theBaptismOfJesusInTheRiverJordan);
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
      rosary
          .add(AppLocalizations.of(context)!.theProclamationOfTheKingdomOfGod);
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

  String getImage(
      BuildContext context, List<String> rosary, int index, String mystery) {
    String image = "";
    if (rosary[index + 1] == AppLocalizations.of(context)!.hailMary) {
      image = 'assets/images/prayers/Bartolomé_Esteban_Perez_Murillo_021.jpg';
    } else if (rosary[index + 1] ==
        AppLocalizations.of(context)!.theLordsPrayer) {
      image = 'assets/images/prayers/Cima_da_Conegliano,_God_the_Father.jpg';
    } else if (rosary[index + 1] == AppLocalizations.of(context)!.gloryBe) {
      image = 'assets/images/prayers/Hendrick_van_balen_Holy_trinity.jpg';
    } else if (rosary[index + 1] ==
        AppLocalizations.of(context)!.fatimaPrayer) {
      image =
          'assets/images/prayers/Ary_Scheffer_-_The_Temptation_of_Christ_(1854).jpg';
    } else if (rosary[index + 1] ==
        AppLocalizations.of(context)!.theApostlesCreed) {
      image =
          'assets/images/prayers/Saint_Peter\'s_Basilica_facade,_Rome,_Italy.jpg';
    } else if (rosary[index + 1] ==
        AppLocalizations.of(context)!.hailHolyQueen) {
      image =
          'assets/images/glorious/Diego_Velázquez_-_Coronation_of_the_Virgin_-_Prado.jpg';
    } else if (rosary[index + 1] ==
        AppLocalizations.of(context)!.concludingPrayer) {
      image = 'assets/images/prayers/Cima_da_Conegliano,_God_the_Father.jpg';
    } else {
      switch (mystery) {
        case "joyful":
          if (rosary[index + 1] ==
              AppLocalizations.of(context)!.theAnnunciation) {
            image = 'assets/images/joyful/The_Annunciation_MET_DT404.jpg';
          } else if (rosary[index + 1] ==
              AppLocalizations.of(context)!.theVisitation) {
            image = 'assets/images/joyful/Champaigne_visitation.jpg';
          } else if (rosary[index + 1] ==
              AppLocalizations.of(context)!.theNativity) {
            image = 'assets/images/joyful/Adoration_of_the_shepherds_reni.JPG';
          } else if (rosary[index + 1] ==
              AppLocalizations.of(context)!.thePresentation) {
            image = 'assets/images/joyful/Champaigne_Présentation_au_temple_Saumur.jpg';
          } else {
            image = 'assets/images/joyful/Disputa_con_los_doctores_(El_Veronés)_grande.jpg';
          }
          break;
        case "sorrowful":
          if (rosary[index + 1] ==
              AppLocalizations.of(context)!.theAgonyInTheGarden) {
            image = 'assets/images/sorrowful/David_Teniers_the_Elder_-_The_Agony_in_the_Garden.jpg';
          } else if (rosary[index + 1] ==
              AppLocalizations.of(context)!.theScourgingAtThePillar) {
            image = 'assets/images/sorrowful/De_Mysteriën_van_de_Rozenkrans._De_geseling_van_Christus,_Peter_Paul_Rubens,_17de_eeuw,_Sint-Pauluskerk_Antwerpen.jpg';
          } else if (rosary[index + 1] ==
              AppLocalizations.of(context)!.theCrowningWithThorns) {
            image = 'assets/images/sorrowful/Jesus_Christ_being_crowned_with_thorns,_by_Jan_Miense_Molenaer.jpg';
          } else if (rosary[index + 1] ==
              AppLocalizations.of(context)!.theCarryingOfTheCross) {
            image = 'assets/images/sorrowful/Pieter_Bruegel_the_Younger_Christ_carrying_the_cross_1606_Gemäldegalerie_Berlin_9368.jpg';
          } else {
            image = 'assets/images/sorrowful/Mantegna,_Andrea_-_crucifixion_-_Louvre_from_Predella_San_Zeno_Altarpiece_Verona.jpg';
          }
          break;
        case "glorious":
          if (rosary[index + 1] ==
              AppLocalizations.of(context)!.theResurrection) {
            image = 'assets/images/glorious/Alexander_Ivanov_-_Christ\'s_Appearance_to_Mary_Magdalene_after_the_Resurrection_-_Google_Art_Project.jpg';
          } else if (rosary[index + 1] ==
              AppLocalizations.of(context)!.theAscension) {
            image = 'assets/images/glorious/Wga_Garofalo_Ascension_of_Christ.jpg';
          } else if (rosary[index + 1] ==
              AppLocalizations.of(context)!.theComingOfTheHolySpirit) {
            image = 'assets/images/glorious/Maino_Pentecostés,_1620-1625._Museo_del_Prado.jpg';
          } else if (rosary[index + 1] ==
              AppLocalizations.of(context)!.theAssumptionOfMary) {
            image = 'assets/images/glorious/The_Assumption_of_the_Virgin_by_Luca_Giordano.jpg';
          } else {
            image = 'assets/images/glorious/Diego_Velázquez_-_Coronation_of_the_Virgin_-_Prado.jpg';
          }
          break;
        case "light":
          if (rosary[index + 1] ==
              AppLocalizations.of(context)!.theBaptismOfJesusInTheRiverJordan) {
            image = 'assets/images/light/Juan_Sánchez_Cotán_-_Baptism_of_Christ,_1600_27.jpg';
          } else if (rosary[index + 1] ==
              AppLocalizations.of(context)!.theWeddingFeastAtCana) {
            image = 'assets/images/light/Daniel_Sarrabat_-_The_Wedding_at_Cana.jpg';
          } else if (rosary[index + 1] ==
              AppLocalizations.of(context)!.theProclamationOfTheKingdomOfGod) {
            image = 'assets/images/light/Jesus_Christ_teaching_on_moutain.png';
          } else if (rosary[index + 1] ==
              AppLocalizations.of(context)!.theTransfigurationOfJesus) {
            image = 'assets/images/light/Transfiguration_Raphael.jpg';
          } else {
            image = 'assets/images/light/Vicente_Macip_Comes_-_The_Last_Supper_-_WGA12057.jpg';
          }
          break;
        default:
          image = 'assets/images/Virgen_del_Rosario,_de_Domingo_Martínez_(Museo_de_Bellas_Artes_de_Sevilla).jpg';
      }
    }
    return image;
  }
}
