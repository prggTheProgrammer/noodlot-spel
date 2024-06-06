import 'package:noodlot_spel/main.dart';
import 'package:noodlot_spel/pages/page.dart';

import 'eindes.dart';

// Besluiten of je naar normale einde gaat of dat je nog een keuze krijgt
GamePage getEinde() {
  return GameState.current.certificaat ? normaleEinde : peripetie;
}

//besluiten tussen de twee verschillende speciale eindes.
GamePage getSpecialeEinde() {
  return GameState.current.certificaat ? specialeEinde1 : specialeEinde2;
}

// Agenten doen niets en vergadering als president, door met verhaal of meteen stoppen
GamePage climax1 = GamePage(
    "Climax 1",
    "Nadat je advertenties hebt geplaatst, zijn er veel mensen die agent willen worden van de {naam}. Na veel moeite, kies jij dertig agenten verspreid over het land om de kaas te gaan verkopen. Omdat je na veertig dagen nog niets van ze hebt gehoord, besluit je om er twee te gaan bezoeken in Brussel. De één blijkt het verkeerde adres te hebben opgegeven en de ander verklaarde dat die kaasgeschiedenis hem niet interesseerde. Bij het volgende bezoek aan Van Schoonbeke zit jij er gefrustreerd bij, omdat je al zo lang bezig bent en nog steeds niets hebt kunnen bereiken. Van Schoonbeke laat aan het gezelschap weten dat jij tot voorzitter bent gekozen van de Vakbond van Belgische Kaashandelaren, wat jij zelf ook niet wist. Je bent daar helemaal niet blij mee; je wilt niet met dingen gaan bemoeien waar je geen verstand van hebt, je wilt gewoon eindelijk je kaas gaan verkopen. Maar Van Schoonbeke wil jij prestige krijgt, omdat dat ook goed is voor hem. Jullie worden morgen in audiëntie ontvangen op het Departement van Handel en ze willen dat jij als plaatsvervangend voorzitter meegaat om geldzaken te regelen. Jouw plan is om ernaartoe te gaan en te zeggen dat jouw gezondheid het niet toelaat. De andere vier worden zenuwachtig en vragen jou of je zou kunnen wachten tot het eind van de audiëntie, voordat je ontslag neemt. Wanneer je hen aankijkt, zie je de waarheid beter voor ogen: zij zijn alle vier mensen van aanzien in de kaas, mensen met een verleden, met kaastraditie, mensen van gezag, mensen met geld, maar jij bent maar een nederige klerk die mislukte kaashandelaar is geworden. Misschien wordt het tijd om te stoppen met deze kaasfantasie, maar aan de andere kant worden deze vier mensen boos en daardoor van Schoonbeke ook. Je zult dan waarschijnlijk niet meer welkom zijn bij hem, nadat je hem zo hebt vernederd.{!certificaat Let op: je bent al je baan kwijt bij de General Marine.}",
    [
      Button("Het is tijd dat ik deze kaasdroom laat gaan", (context) => getSpecialeEinde()), //speciale eindes
      Button("Ik ga door, het moet mij lukken om kaas te verkopen", (context) => climax2) //of normale einde
    ]
);
GamePage climax2 = GamePage(
    "Climax 2",
    "Eindelijk ben je van die stomme vergadering af, wanneer je een brief ontvangt van Hornstra waarin hij vertelt dat hij langskomt om te kijken hoe het gaat met het verkopen van die twintig ton. Maar het gaat helemaal niet, want je hebt nog niets kunnen verkopen. Je kantoor is nu wel al helemaal in orde, maar je hebt nog maar vijf dagen voordat Hornstra komt en als je dan nog steeds niets hebt verkocht, is het afgelopen met de {naam}. Is dit dan het definitieve einde van de {naam} of is er toch een kleine kans dat het lukt om alle kaas in vijf dagen te verkopen? Met agenten gaat het niet meer lukken, maar misschien lukt het jou nog om zelf de kaas te verkopen.{!certificaat Let op: je bent al je baan kwijt bij de General Marine.}",
    [
      Button("Niet geschoten is altijd mis; ik probeer het nog één laatste keer", (context) => climax3A),
      Button("De {naam} staat ten dode opgeschreven; ik geef op", (context) => getEinde())
    ]
);

GamePage climax3A = GamePage(
    "Climax 3A",
    "Je pakt een paar kazen die je nog had liggen en gaat op pad om ze te proberen te verkopen aan de eerste de beste winkel. Maar hoe moet je dat eigenlijk doen? Je ziet een advertentie van een of andere Boorman, die kooplieden helpt die moeite hebben met verkopen. Je besluit erheen te gaan en nadat jij naar zijn advies hebt geluisterd, ga je op zoek naar een winkel. Nadat je een tijd voor de winkel bent gaan staan om je moed te verzamelen, ga je naar binnen en vraag je of je met de eigenaar kunt spreken. Deze blijkt niet geïnteresseerd te zijn in het kopen van kaas en hij vertelt ook dat hij zelf voor Hornstra heef gewerkt, maar dat het een tijdsverspilling is. Als je thuiskomt kom je erachter dat jouw zoon een kist heeft kunnen verkopen aan een vriend, maar dat is nog lang geen twintig ton. Wat kun je nu nog doen? Jouw agenten nog eens aanschrijven? Nee, je hebt nog maar één optie:",
    [
      Button("Het is tijd dat die kaasellende een einde neemt", (context) => getEinde())
    ]
);

GamePage climax3B = GamePage(
    "Climax 3B",
    "Je gaat deur aan deur om te vragen of mensen jouw kaas willen kopen. Je had de grootste moeite om die zware bollen kwijt te raken, wat slechts gelukte omdat je zei dat er niet te betalen was. Je komt erachter dat je eigenlijk niet goed weet hoe je moet verkopen. Had je misschien toch agenten moeten inhuren? Alsof de situatie niet al erg genoeg is, krijg je de volgende dag een brief van Hornstra waarin hij vertelt dat hij langskomt om te kijken hoe het gaat met het verkopen van die twintig ton. Maar het gaat dus helemaal niet. Je kantoor is nu wel al helemaal in orde, maar gaat het lukken om alle kaas te verkopen in vijf dagen of is dit dan het definitieve einde van de {naam}. “Alles of niets”, je probeert het nog één laatste keer, maar dit keer pak je het anders aan. Je zoekt advies bij een of andere Boorman, die kooplieden helpt die moeite hebben met verkopen, en je gaat naar een kaaswinkel toe. Nadat je een tijd voor de winkel bent gaan staan om je moed te verzamelen, ga je naar binnen en vraag je of je met de eigenaar kunt spreken. Deze blijkt niet geïnteresseerd te zijn in het kopen van kaas en hij vertelt ook dat hij zelf voor Hornstra heef gewerkt, maar dat het een tijdsverspilling is. Als je thuiskomt kom je erachter dat jouw zoon een kist heeft kunnen verkopen aan een vriend, maar dat is nog lang geen twintig ton. Je hebt alles geprobeerd om die kaas te verkopen, je kunt nog maar één ding doen.",
    climax3A.buttons
);

GamePage peripetie = GamePage(
    "Peripetie",
    "Nadat je de kist met kazen hebt dichtgespijkerd, breng je het met een taxi terug naar de patentkelders. Je begint je nu af te vragen waarom je ooit hebt geprobeerd om handelaar te worden. Is het misschien omdat je geen nee wilde zeggen tegen van Schoonbeke? Maar wat nog erger is, is dat je nu ook niet meer terug kunt, omdat je al ontslag hebt genomen bij je oude baan. Had je maar naar je vrouw geluisterd. Zij was verstandig en had waarschijnlijk al meteen begrepen dat dit niets zou worden. Je hebt nu niets meer: geen aanzien, geen {naam} en geen baan. Hoe moet je nu voor je gezin zorgen? Wat zal jouw vrouw ervan vinden dat je niet naar haar advies hebt geluisterd. Terwijl je deze dingen overweegt, breekt de dag aan waarop Hornstra langskomt, maar wanneer hij aanbelt heb jij niet de moed om de deur open te doen. Hornstra gaat weer weg en jij blijft alleen achter. Wat moet je nu doen? Moet je naar je vrouw gaan? Maar wil ze jou nog wel zien? Of is het misschien toch beter om weg te gaan en nooit meer terug te komen.",
    [
      Button("Ik heb niets meer te verliezen, ik ga troost zoeken bij mijn vrouw", (context) => catharsis),
      Button("Ik ben een mislukte vader en echtgenoot, ik ga weg", (context) => slechteEinde)
    ]
);
