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
    "Jouw kantoor begint al vorm te krijgen, je mist alleen nog maar een bureau. Bij de volgende kletspartij van Van Schoonbeke deel jij de nieuwe naam van je onderneming mee en je toont het brievenpapier van de {naam}. De volgende morgen zijn de kazen aangekomen en je krijgt te horen dat ze in patentkelders worden opgeslagen totdat ze worden verkocht. Je neemt één kist als proef mee naar huis en je laat de vrienden van Van Schoonbeke het proeven en je merkt nu duidelijk dat jouw aanzien is gestegen. Jouw broer komt bij jou langs om de kaas te proeven en hij zegt dat je nu echt aan de slag moet gaan met het verkopen, maar jij moet eerst nog alles op orde hebben. Je hebt eindelijk een bureau kunnen vinden en je kunt nu aan de slag. Je moet alleen nog één ding bedenken: moet jij die kazen zelf gaan verkopen of is het beter om agenten in te huren, zodat jij je bezig kunt houden met de administratieve zaken?",
    [
        Button("Ik ga wel zelf kaas verkopen", (context) => climax3B),
        Button("Ik huur agenten in om alle kaas te verkopen", (context) => climax1)
    ]
);

// op weg naar goede einde
GamePage intrige1B = GamePage(
    "Intrige 1B",
    "Hornstra is eigenlijk teleurgesteld dat jij het aanbod niet hebt aangenomen, omdat het vernederend is voor hem om met zo een laag iemand om te gaan. Maar je leven gaat door en jij gaat nu elke week op bezoek bij Van Schoonbeke, wat altijd een vernederende ervaring is. Van Schoonbeke heeft niet verteld dat jij een klerk bent en voor de gezelschap ben jij dus een niemand. Ze praten steeds over restaurants waar jij nooit bent geweest en over rijke families waar jij nooit van hebt gehoord. Zwijgen is dus het enige wat je kunt doen. Jouw baan bij de General Marine verloopt ook zoals altijd: je werkt hard, maar verdient niet veel en je kunt op elk moment vervangen worden door een andere klerk. Wanneer je een keer ziet hoe jouw vrouw met haar gewone zuinigheid de boter smeert en het brood snijdt, bedenk je dat zij de vrouw van een koopman had kunnen zijn, als jij het aanbod van Van Schoonbeke had aangenomen. De volgende dag nodigt Tuil, een vriend van jou op je werk, om samen met Erfurt en Bartherotte (twee andere collega’s) wat te gaan drinken. Maar jij moet dan eigenlijk naar Van Schoonbeke, waar je geen zin in hebt. Misschien is het tijd om toe te geven dat jij een klerk bent en niet past bij de kring van Van Schoonbeke. Aan de andere kant, wat zullen zij ervan vinden dat jij met zulke lage mensen omgaat. Was het misschien toch beter geweest om het aanbod aan te nemen?",
    [
        Button("Het is tijd dat ik het hele gezelschap van Van Schoonbeke naar de duivel zend!", (context) => goedeEinde),
        Button("Ik zeg tegen Tuil dat ik niet kan komen (en misschien lukt het mij om in prestige te groeien)", (context) => vernedering)
    ]
);
