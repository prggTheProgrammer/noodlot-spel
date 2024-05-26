import 'package:noodlot_spel/pages/page.dart';

//TODO: make einde pages and WIP
class EindePage extends GamePage {
  EindePage(String title, {super.key}) : super(
    title,
    "WIP",
    []
  );

}

GamePage normaleEinde = EindePage("Normale Einde");
GamePage slechteEinde = EindePage("Slechte Einde");
GamePage catharsis = EindePage("Catharsis");
GamePage specialeEinde1 = EindePage("Speciale Einde 1");
GamePage specialeEinde2 = EindePage("Speciale Einde 2");
GamePage goedeEinde = EindePage("Goede Einde");
GamePage toBeTitled = EindePage("WIP");
