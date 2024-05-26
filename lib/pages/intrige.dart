import 'package:noodlot_spel/pages/climax.dart';
import 'package:noodlot_spel/pages/eindes.dart';
import 'package:noodlot_spel/pages/page.dart';

import '../main.dart';

// door naar verhaal (intrige twee) onafhankelijk wel of niet certificaat
GamePage intrige1A = GamePage(
    "Intrige 1A",
    "story",
    [
        Button("advies volgen en certificaat maken", (context) => intrige2),
        Button("Ik geef mijn baan op om kaas te verkopen",
              (context) => intrige2,
              action: () => GameState.certificaat = false)
    ]
);

//Naam kiezen (Gafpa)
//TODO: add text bar
GamePage intrige2 = GamePage("Intrige 2", "story", [Button("Door", (context) => intrige3)]);

//door naar verhaal (climax)
GamePage intrige3 = GamePage(
    "Intrige 3",
    "story",
    [
        Button("Ik doe het zelf wel", (context) => climax3B),
        Button("Ik huur agenten in om het werk voor mij te doen", (context) => climax1)
    ]
);

// op weg naar goede einde
GamePage intrige1B = GamePage(
    "Intrige 1B",
    "story",
    [
        Button("goede", (context) => goedeEinde),
        Button("slechte", (context) => toBeTitled)
    ]
);
