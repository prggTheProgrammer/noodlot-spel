import 'package:flutter/material.dart';
import 'package:noodlot_spel/pages/menu_and_extra.dart';
import 'package:noodlot_spel/pages/page.dart';

import '../main.dart';

//TODO: make einde pages and WIP
class EindePage extends GamePage {
  final String explanation;

  EindePage(String title, String story, this.explanation, {super.key}) : super(
    title,
    story,
    [Button(
      "Einde opslaan en terug naar start",
      (context) => homePage,
      action: () {
        GameState endState = GameState.current;
        GameState.reset();
        //TODO: name shouldn't change
        // Don't do anything if already exists, Note: new end doesn't replace old one.
        for (Button eindeButton in eindes) {
          if (eindeButton.text == title) return;
        }
        eindes.add(Button(title, (context) => GamePage(title, "${story.replaceAll("{naam}", endState.naam)}\n\n$explanation", const [])));
      },
    )]
  );

  @override
  List<Widget>? appBarButtons(BuildContext context) {
    return buttons; //maybe nothing
  }

  @override
  List<Widget> body(BuildContext context){
    return [
      Padding(padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10), child: Text(title, style: Style.title(context),)),
      Padding(padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10), child: Text(story.replaceAll("{naam}", GameState.current.naam))),
      Padding(padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10), child: Text(explanation, style: Style.explanation(context)))
    ];
  }

}

GamePage normaleEinde = EindePage("Normale Einde","Nadat je de kist met kazen hebt dichtgespijkerd, breng je het met een taxi terug naar de patentkelders. Je begint je nu af te vragen waarom je ooit hebt geprobeerd om handelaar te worden. Is het misschien omdat je geen nee wilde zeggen tegen Van Schoonbeke? Wat zouden jouw vrouw en jouw kinderen hiervan vinden? Wanneer de volgende dag Hornstra komt, heb jij niet de moed om de deur open te doen. Wanneer hij eindelijk weggaat, vervult een grote berusting jouw hele wezen. Jouw vrouw staat in de keuken zonder iets te doen en kijkt jullie tuintje in. Je gaat op haar toe en sluit haar in jouw armen. En als jouw eerste tranen op haar verweerd gezicht vallen, zie je dat ze jou tegenweent. De kaastoren is ingestort. Je gaat weer terug bij de General Marine en je neemt ook weer je nederige plaats bij de kletspartij van Van Schoonbeke. Je brengt een bezoek aan ‘t graf van je moeder en je bent blij dat zij die kaasramp niet heeft bijgewoond. En zo eindigt de {naam} en dit kaasverhaal.","Het lot wilde dat jij in aanraking kwam met Van Schoonbeke en zijn aanbod. Het maakte dus niet uit wat jij koos. Toch ben je de fout (hamartia) in gegaan om zijn aanbod aan te nemen in plaats van jouw nederig bestaan als klerk te accepteren. Gelukkig heb jij wel een verstandige vrouw, naar wie je hebt geluisterd. Als je accepteert dat jij niet weet hoe je kaas moet verkopen en daarom agenten aanstelt, krijg je toch nog een kans om door te gaan met het verkopen van kaas. Aan het einde kun je nog kiezen om niet meer op te geven, maar uiteindelijk maakt dat niet meer uit, omdat je voorbestemd bent om te falen. Dit is ook het oorspronkelijke einde van het boek: het is geen goed einde, maar ook niet het slechtste.");
GamePage slechteEinde = EindePage("Slechte Einde","Je voelt dat jouw prestige van man en vader met de dag vermindert en daarom besluit je om weg te gaan van jouw familie. Waarom heb je dan ook je plicht verlaten om kaas te gaan verkopen? Jouw vrouw en jouw kinderen hadden al vanaf het begin door dat het onzin was. Je denkt daarom dat ze jou nooit meer willen zien. Je brengt een bezoek aan ‘t graf van je moeder en je bent blij dat zij die kaasramp niet heeft bijgewoond. Daarna ga je de rest van je leven leiden als een bedelaar. Je vraagt je soms af of het toch niet beter is om terug te gaan naar je familie om berouw te tonen en te vragen of ze jou willen helpen. Maar terwijl je denkt aan je eigen ellende heb jij niet de moed om terug te gaan.","Het lot wilde dat jij in aanraking kwam met Van Schoonbeke en zijn aanbod. Het maakte dus niet uit wat jij koos. Toch ben je de fout (hamartia) in gegaan om zijn aanbod aan te nemen in plaats van jouw nederig bestaan als klerk te accepteren. Deze hamartia is alleen maar erger geworden, doordat je niet naar je vrouw hebt geluisterd. Als je accepteert dat jij niet weet hoe je kaas moet verkopen en daarom agenten aanstelt, krijg je toch nog een kans om door te gaan met het verkopen van kaas. Aan het einde kun je nog kiezen om niet meer op te geven, maar uiteindelijk maakt dat niet meer uit, omdat je voorbestemd bent om te falen. Omdat je ook je oude baan kwijt bent, eindig het alleen maar slechter. Het lukt jou niet om jouw fouten te accepteren en naar je familie toe te gaan. Hierdoor is er geen opluchting en dus geen Catharsis aan het einde. Daarom is dit ook het slechtste einde.");
GamePage catharsis = EindePage("Catharsis","Jij blijf nog even staan en een grote berusting vervult Jouw hele wezen. 't Is alsof je in bed door een liefdevolle hand wordt toegedekt. Maar jij moet naar de keuken. Jouw vrouw staat daar zonder iets te doen en kijkt jullie tuintje in. Je gaat op haar toe en sluit haar in jouw armen. En als jouw eerste tranen op haar verweerd gezicht vallen, zie je dat zij jou tegenweent. Je hebt nog steeds spijt dat je niet naar haar hebt geluisterd, maar je bent gelukkig omdat je naar jouw vrouw bent gegaan en zij jou troost. Vol optimisme ga jij op zoek naar een nieuwe baan. Alleen dit keer een nederige baan die bij jou past. Je eindigt dit verhaal met de woorden: “Beste, beste kinderen. Lieve, lieve vrouw.”","Het lot wilde dat jij in aanraking kwam met Van Schoonbeke en zijn aanbod. Het maakte dus niet uit wat jij koos. Toch ben je de fout (hamartia) in gegaan om zijn aanbod aan te nemen in plaats van jouw nederig bestaan als klerk te accepteren. Deze hamartia is alleen maar erger geworden, doordat je niet naar je vrouw hebt geluisterd. Als je accepteert dat jij niet weet hoe je kaas moet verkopen en daarom agenten aanstelt, krijg je toch nog een kans om door te gaan met het verkopen van kaas. Aan het einde kun je nog kiezen om niet meer op te geven, maar uiteindelijk maakt dat niet meer uit, omdat je voorbestemd bent om te falen. Doordat je een tweede fout (hamartia) begaat door niet naar je vrouw te luisteren, wordt de tragedie groter. Daardoor is de troost aan het einde groter en het zelfbesef ook. Dit is dus het einde met de meeste catharsis.");
GamePage specialeEinde1 = EindePage("Speciale Einde 1","","");
GamePage specialeEinde2 = EindePage("Speciale Einde 2","","");
GamePage goedeEinde = EindePage("Goede Einde","","");
GamePage vernedering = EindePage("Vernedering","","");
