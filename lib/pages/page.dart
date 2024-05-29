import 'package:flutter/material.dart';
import 'package:noodlot_spel/main.dart';

import 'menu_and_extra.dart';

class GamePage extends StatelessWidget {
  final String title;
  final Image? icon;
  final String story;
  final List<Widget> buttons;


  const GamePage(this.title, this.story, this.buttons, {super.key, this.icon});

  //TODO: design
  List<Widget> createButtons(){
    //ERROR if more than 4 buttons
    switch (buttons.length) {
      case 0: return [];
      case 1: return [buttons[0]];
      case 2: return [Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: buttons.sublist(0,2))];
      case 3:
      case 4:
        return[
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: buttons.sublist(0,2),),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: buttons.sublist(2,buttons.length),),
      ];

      default: throw "Invalid length";
    }
  }
  //TODO: text scrolling: text doesn't fit in WIP
  List<Widget> body(BuildContext context) {
    return [SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10),
        child: Text(story),
    )];
  }

  List<Widget>? appBarButtons(BuildContext context) {
    return [
      ElevatedButton(
          onPressed: () {
            GameState.reset();
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => homePage));
          },
          child: const Text("Terug naar start"))
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
        actions: appBarButtons(context),
    ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          if (icon != null) icon!,
          ... body(context),
          ... createButtons() //add buttons to Column

        ],),
      ),
    );
  }

}

class Button extends StatelessWidget {
  final String text;
  final Widget Function(BuildContext) pageBuilder;
  final Function? action;

  const Button(this.text, this.pageBuilder, {super.key, this.action});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: pageBuilder));
          if (action != null) action!();
          print("Gamestate {certificaat: ${GameState.current.certificaat}, naam: ${GameState.current.naam}}");
        },
        child: Text(text))
    );
  }
}

// used at intrige 2(A/B) to choose name (Gafpa)
//Not a GamePage, because it needs to have state
class NameField extends StatefulWidget {
  final String text;
  final Widget Function(BuildContext) pageBuilder;

  const NameField(this.text, this.pageBuilder, {super.key});

  @override
  State<StatefulWidget> createState() => _NameFieldState();

}

class _NameFieldState extends State<NameField>{
  final TextEditingController _controller = TextEditingController(text: "Gafpa");
  String? errorText;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: 300,
        child: TextField(
          controller: _controller,
          maxLength: 20,
          decoration: InputDecoration(
              hintText: "Naam van de onderneming",
              errorText: errorText
          ),

        )
      ),
      ElevatedButton(onPressed: () {
        String text = _controller.text;
        if (text.isEmpty) {
          return setState(() {
            errorText = "Vul een naam in";
          });
        }
        GameState.current.naam = text;
        Navigator.pushReplacement(context, MaterialPageRoute(builder: widget.pageBuilder));
      },
          child: Text(widget.text))
    ],);
  }
}
