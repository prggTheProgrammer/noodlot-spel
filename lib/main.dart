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
      Button("Start", MaterialPageRoute(builder: (BuildContext context) => inleiding)),
      Button("Inleiding /Toelichting (Spoiler Alert!) ", MaterialPageRoute(builder: (BuildContext context) => HomePage())),
      Button("Eindes", MaterialPageRoute(builder: (BuildContext context) => HomePage()))
    ]
  );

   @override
   List<Widget> body(BuildContext context){
     return [
       Text(title, style: Theme.of(context).textTheme.titleLarge,),
       Text(story, style: Theme.of(context).textTheme.titleMedium,)
     ];
   }

}
GamePage homePage = HomePage();
GamePage inleiding = GamePage(
    "Inleiding",
    "Jouw naam is Frans Laarmans. Je leeft rond 1930 in Antwerpen samen met je vrouw, van wie je veel houdt en je kinderen, van wie je ook veel houdt, hoewel ze soms toch best vervelend kunnen zijn. Om jouw familie te onderhouden werk je als klerk bij de General Marine and Shipbuilding Company.", //TODO: italic
    [
      Button("Verhaal Starten", MaterialPageRoute(builder: (BuildContext context) => expositie1))
    ]
);

GamePage expositie1 = GamePage(
    "Expositie 1",
    "Jouw moeder is overleden; een nare geschiedenis natuurlijk. Je zat een beetje ongemakkelijk bij haar sterfbed samen met je zussen en jouw broer, die dokter is. Een paar dagen later was de begrafenis, die zoals gebruikelijk verliep, als je wel kunt spreken van een normale begrafenis. Er waren veel mensen aanwezig, waaronder een klant en vriend van jouw broer, die Van Schoonbeke heette. Hij nodigt jou uit om een keer bij hem op bezoek te komen. ",
    [
      Button('“Dat zal ik doen”', MaterialPageRoute(builder: (BuildContext context) => expositie1)),
      Button('“Nee sorry, ik heb het heel druk”', MaterialPageRoute(builder: (BuildContext context) => expositie1)),
      Button('Ik zeg wel “ja”, maar ik kom niet', MaterialPageRoute(builder: (BuildContext context) => expositie1))
    ]
);