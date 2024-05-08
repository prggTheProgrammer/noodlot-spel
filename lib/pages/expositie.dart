import 'package:noodlot_spel/main.dart';
import 'package:noodlot_spel/pages/page.dart';

import 'intrige.dart';

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
    "Je was op bezoek bij van Schoonbeke. Geld heeft hij in overvloed en al zijn vrienden hebben óók geld. Jij voelde je niet op je gemak, want jij bent niet rijk. Jouw broer is ook niet rijk, maar omdat hij een dokter is, heeft hij alsnog aanzien. Maar jij hebt als nederige klerk geen aanzien. Je hebt nauwelijks iets gezegd gedurende het hele gesprek, zodat niemand daarachter zou komen. Van Schoonbeke wil jou helpen meer aanzien te krijgen, want in zijn milieu heeft mijnheer Van Schoonbeke eigenlijk het recht niet er vrienden zonder geld of titels op na te houden. Daarom biedt hij jou de mogelijkheid aan om vertegenwoordiger van België te worden van de Nederlandse kaasfirma Hornstra. Je bespreekt het met je vrouw. Ze vindt het goed, maar ze vindt wel dat je niet meteen je baan bij de General Marine and Shipbuilding Company moet opgeven.",
    [
      Button("Ik geef meteen mijn baan op en stuur een brief naar Hornstra",
            (context) => intrige2,
            action: () => GameState.certificaat = false),
      Button("Ik doe wat mijn vrouw zegt en stuur gewoon de brief naar Hornstra", (context) => intrige1A),
      Button("Ik vind mijn baan wel goed zo, ik schrijf geen brief aan Hornstra", (context) => intrige1B)
    ]
);
// Met ander verhaal, maar zelfde keuzes als 2A door naar verhaal
GamePage expositie2B = GamePage(
    "Expositie 2B",
    "“Dat is erg jammer. Fijne dag nog.” Jouw broer komt de volgende dag op bezoek. Hij betreurt het dat het jou niet was gelukt om bij Van Schoonbeke op bezoek te komen en hij legt wat meer over Van Schoonbeke uit. “Geld heeft hij in overvloed en al zijn vrienden hebben óók geld”, vertelt hij, “Hij en zijn vrienden hebben allemaal veel aanzien. Hij zou voor jou een mooie baan kunnen regelen. Je zou kaashandelaar kunnen worden voor de Nederlandse firma Hornstra.” Je zegt dat je erover na zult denken. Je bespreekt het met je vrouw. Ze vindt het goed, maar ze vindt wel dat je niet meteen je baan bij de General Marine and Shipbuilding Company moet opgeven.",
    expositie2A.buttons
);

//zelfde keuzes als expositie 1
GamePage expositie2C = GamePage(
    "Expositie 2C",
    "Je leven gaat door: je gaat naar je werk, bezoekt het graf van je moeder en wanneer je weer thuis bent groet je vrolijk je vrouw en je kinderen. Jouw broer komt op bezoek en hij vraagt waarom je niet was komen opdagen. “Het was heel gezellig”, zegt hij, “en Van Schoonbeke rekende er eigenlijk op dat je zou komen” Je geeft geen duidelijk antwoord en daarna vraagt jouw broer of je misschien morgen wel wilt komen naar Van Schoonbeke.",
    expositie1.buttons
);
