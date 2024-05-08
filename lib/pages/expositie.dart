import 'package:noodlot_spel/pages/page.dart';

GamePage expositie1 = GamePage(
    "Expositie 1",
    "Jouw moeder is overleden; een nare geschiedenis natuurlijk. Je zat een beetje ongemakkelijk bij haar sterfbed samen met je zussen en jouw broer, die dokter is. Een paar dagen later was de begrafenis, die zoals gebruikelijk verliep, als je wel kunt spreken van een normale begrafenis. Er waren veel mensen aanwezig, waaronder een klant en vriend van jouw broer, die Van Schoonbeke heette. Hij nodigt jou uit om een keer bij hem op bezoek te komen. ",
    [
      Button('“Dat zal ik doen”', (context) => expositie2A),
      Button('“Nee sorry, ik heb het heel druk”', (context) => expositie2B),
      Button('Ik zeg wel “ja”, maar ik kom niet', (context) => expositie2C)
    ]
);
// door naar verhaal (intrige)
GamePage expositie2A = GamePage(
    "Expositie 2A",
    "",
    [

    ]
);
// Met ander verhaal, maar zelfde keuzes als 2A door naar verhaal
GamePage expositie2B = GamePage(
    "Expositie 2B",
    "",
    [

    ]
);

//zelfde keuzes als expositie 1
GamePage expositie2C = GamePage(
    "Expositie 2C",
    "",
    [
      Button('“Dat zal ik doen”', (context) => expositie2A),
      Button('“Nee sorry, ik heb het heel druk”', (context) => expositie2B),
      Button('Ik zeg wel “ja”, maar ik kom niet', (context) => expositie2C)
    ]
);
