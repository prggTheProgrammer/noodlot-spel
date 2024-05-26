import 'package:noodlot_spel/main.dart';
import 'package:noodlot_spel/pages/page.dart';

import 'eindes.dart';

// Besluiten of je naar normale einde gaat of dat je nog een keuze krijgt
GamePage getEinde() {
  return GameState.certificaat ? normaleEinde : peripetie;
}

//besluiten tussen de twee verschillende speciale eindes.
GamePage getSpecialeEinde() {
  return GameState.certificaat ? specialeEinde1 : specialeEinde2;
}

// Agenten doen niets en vergadering als president, door met verhaal of meteen stoppen
GamePage climax1 = GamePage(
    "Climax 1",
    "story",
    [
      Button("Stoppen", (context) => getSpecialeEinde()), //speciale eindes
      Button("Doorgaan", (context) => climax2) //of normale einde
    ]
);
GamePage climax2 = GamePage(
    "Climax 2",
    "story",
    [
      Button("Ik probeer het nog één laatste keer", (context) => climax3A),
      Button("Het heeft geen zin meer, ik geef op", (context) => getEinde())
    ]
);

GamePage climax3A = GamePage(
    "Climax 3A",
    "story",
    [
      Button("Stoppen", (context) => getEinde())
    ]
);

GamePage climax3B = GamePage(
    "Climax 3B",
    "story",
    climax3A.buttons
);

GamePage peripetie = GamePage(
    "Peripetie",
    "story",
    [
      Button("Naar vrouw", (context) => catharsis),
      Button("Niet naar vrouw", (context) => slechteEinde)
    ]
);
