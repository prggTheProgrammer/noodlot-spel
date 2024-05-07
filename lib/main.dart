import 'package:flutter/material.dart';
import 'package:noodlot_spel/pages/page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ontkom het Noodlot',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: homePage,
    );
  }
}

class HomePage extends GamePage {
   HomePage({super.key}) : super(
    "Ontkom het Noodlot",
    "Eindelijk schrijf ik je weer omdat er grote dingen staan te gebeuren en wel door toedoen van mijnheer Van Schoonbeke.",
    [
      Button("Start", (context) => intro),
      Button("Inleiding /Toelichting (Spoiler Alert!) ", (context) => toelichting),
      Button("Eindes", (context) => WIP)
    ]
  );

   @override
   List<Widget> body(BuildContext context){
     return [
       Text(title, style: Theme.of(context).textTheme.titleLarge,),
       Text(story, style: Theme.of(context).textTheme.titleMedium,)
     ];
   }

   @override
   List<Widget>? appBarButtons(BuildContext context) {
     return null;
     //because homepage has no back button
   }

}
GamePage homePage = HomePage();
GamePage intro = GamePage(
    "Inleiding",
    "Jouw naam is Frans Laarmans. Je leeft rond 1930 in Antwerpen samen met je vrouw, van wie je veel houdt en je kinderen, van wie je ook veel houdt, hoewel ze soms toch best vervelend kunnen zijn. Om jouw familie te onderhouden werk je als klerk bij de General Marine and Shipbuilding Company.", //TODO: italic
    [
      Button("Verhaal Starten", (context) => expositie1)
    ]
);

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


GamePage toelichting = GamePage("Inleiding/toelichting", 'In het spel Ontkom het Noodlot krijg je de controle over de hoofdpersonage van het boek Kaas. Afhankelijk van de keuzes die je maakt loopt het verhaal anders af. Het boek kaas gaat over een klerk, Frans Laarmans genaamd, die aspiraties heeft om handelaar te worden in kaas. Hij wil in aanzien groeien om mee te kunnen praten met de rijke vrienden van zijn broer. Omdat kaas een tragedie is, loopt het slecht af met Frans. Na veel tijd te hebben besteed aan het inrichten van zijn onderneming en geen aan het daadwerkelijk verkopen van kaas, komt hij tragisch tot val. Hij erkent dan dat het een dwaze droom van hem was om handelaar te worden en hij keert weer terug naar zijn nederig bestaan als klerk.\nIn het spel Ontkom het Noodlot gaat het erom dat je speelt met deze geweldige tragedie van Willem Elsschot. Daarom heb ik ervoor gekozen om de nadruk te leggen op de opbouw van de tragedie en niet zo zeer op de tragische held. Zo kan de speler door bepaalde keuzes aan te klikken, een tragedie hebben die meer op de klassieke tragedies lijkt of juist minder, en een tragedie die meer het boek volgt of juist helemaal niet.\nHet idee is dat een tragische held altijd het noodlot probeert te ontkomen maar daardoor ontstaat de catastrofe juist. De speler probeert dat ook, maar het loopt vaak uit op een catastrofe. Toch is er één verhaallijn waar het wel lukt. Frans Laarmans kan zijn hamartia voorkomen, namelijk dat hij iets wil zijn wat hij niet is, door zijn lot te aanvaarden en niet mee te gaan in zijn kaasdroom. Hij gaat te veel mee in wat het gezelschap van Van Schoonbeke van hem zou vinden. In zijn eigen woorden: “Waarom heb ik het dan gedaan? ... Ik geloof dat het mij overkomen is omdat ik te meegaand ben. Toen Van Schoonbeke mij vroeg of ik het doen wilde, heb ik de moed niet gehad hem en zijn kaas van mij af te stoten, zoals ik had moeten doen.”\nIn het boek kaas is er wel echt sprake van Catharsis (emotionele zuivering). Dat doet de schrijver door sympathie op te wekken voor het personage: een simpele man die geïrriteerd is, omdat hij niet mee kan praten met de rijke snobs. Doordat hij zijn lot accepteert en naar zijn vrouw gaat, komt er rust en vrede: “Ik blijf nog even staan en een grote berusting vervult mijn hele wezen. \'t Is alsof ik in bed door een liefdevolle hand word toegedekt. Maar ik moet naar de keuken. Mijn vrouw staat daar zonder iets te doen en kijkt ons tuintje in. Ik ga op haar toe en sluit haar in mijn armen. En als mijn eerste tranen op haar verweerd gezicht vallen, zie ik dat zij mij tegenweent.” Door van de hoofdpersonage een rotpersoon te maken, als je bijvoorbeeld kiest dat Frans alleen maar onbeleefde dingen zegt, ontstaat er geen sympathie voor de hoofdpersoon en dus ook geen Catharsis. ', [Button("Terug naar start", (context) => homePage), ]);
GamePage WIP = const GamePage("Work in Progress", "", []);
