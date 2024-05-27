import 'package:noodlot_spel/pages/climax.dart';
import 'package:noodlot_spel/pages/eindes.dart';
import 'package:noodlot_spel/pages/page.dart';

import '../main.dart';

// door naar verhaal (intrige twee) onafhankelijk wel of niet certificaat
GamePage intrige1A = GamePage(
    "Intrige 1A",
    "Na het schrijven van de brief, krijg je een telegram die jou uitnodigt om de volgende dag naar Amsterdam te gaan. Je meldt je ziek bij je werk en je gaat naar Amsterdam. Hornstra stelt jou aan als algemeen vertegenwoordiger voor België en het Groothertogdom Luxemburg en hij zal twintig ton volvette Edammer kaas sturen naar Antwerpen als proef. Je tekent een contract voor vijf procent van de verkoopprijs en een salaris van driehonderd gulden per maand, wat meer dan het dubbele is van wat je verdiende. De volgende keer dat je bij Van Schoonbeke op bezoek bent, deelt hij jouw goede nieuws mee aan de rest, wat natuurlijk ook goed is voor hem. Je voelt je nu veel meer op je gemak en je durft veel meer te praten. Voor het eerst zit je niet in een hoekje maar je krijgt een plaats aangeboden tussen de rest. Wanneer je thuiskomt laat je het contract aan je vrouw zien, maar zij merkt op dat er staat dat Hornstra op elk moment het contract kan beëindigen. Daarom stelt zij voor dat je aan jouw broer vraagt of hij een certificaat kan maken dat jij verlof moet krijgen voor een of andere ziekte, zodat je niet hoeft te stoppen met jouw baan bij de General Marine. Persoonlijk ben jij van mening dat het een halfslachtige oplossing is en dat men in dergelijke gevallen het een of het ander moet doen.",
    [
        Button("Ik volg het advies van mij vrouw op en vraag mijn broer om een certificaat te maken ", (context) => intrige2A),
        Button("Als ik dit wil doen moet ik er volledig voor gaan: ik neem ontslag bij de General Marine",
              (context) => intrige2A,
              action: () => GameState.current.certificaat = false)
    ]
);

//Naam kiezen (Gafpa)
GamePage intrige2A = GamePage(
    "Intrige 2A",
    "De volgende morgen ga je meteen aan de slag met het inrichten van jouw kantoor. Er moet veel geregeld worden: bureau, schrijfmachine, telefoon en nog veel meer. Je moet ook nog een naam bedenken voor je onderneming. Er komen veel ideeën bij je op, maar wat gaat het worden?",
    [
      NameField("Naam Kiezen", (context) => intrige3)
    ]);

GamePage intrige2B = GamePage(
    "Intrige 2B",
    "Na het schrijven van de brief, krijg je een telegram die jou uitnodigt om de volgende dag naar Amsterdam te gaan en dat doe jij. Hornstra stelt jou aan als algemeen vertegenwoordiger voor België en het Groothertogdom Luxemburg en hij zal twintig ton volvette Edammer kaas sturen naar Antwerpen als proef. Je tekent een contract voor vijf procent van de verkoopprijs en een salaris van driehonderd gulden per maand, wat meer dan het dubbele is van wat je verdiende. De volgende keer dat je bij Van Schoonbeke op bezoek bent, deelt hij jouw goede nieuws mee aan de rest, wat natuurlijk ook goed is voor hem. Je voelt je nu veel meer op je gemak en je durft veel meer te praten. Voor het eerst zit je niet in een hoekje maar je krijgt een plaats aangeboden tussen de rest. Wanneer je thuiskomt laat je het contract aan je vrouw zien, maar zij merkt op dat er staat dat Hornstra op elk moment het contract kan beëindigen. Misschien had je toch beter jouw baan niet meteen moeten opgeven. De volgende morgen ga je meteen aan de slag met het inrichten van jouw kantoor. Er moet veel geregeld worden: bureau, schrijfmachine, telefoon en nog veel meer. Je moet ook nog een naam bedenken voor je onderneming. Er komen veel ideeën bij je op, maar wat gaat het worden?",
    [
      NameField("Naam Kiezen", (context) => intrige3)
    ]);

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
