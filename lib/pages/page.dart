import 'package:flutter/material.dart';

import 'menu_and_extra.dart';

class GamePage extends StatelessWidget {
  final String title;
  final Image? icon;
  final String story;
  final List<Button> buttons;


  const GamePage(this.title, this.story, this.buttons, {super.key, this.icon});

  //TODO: design
  List<Widget> createButtons(){
    //ERROR if more than 4 buttons
    switch (buttons.length) {
      case 0: return [];
      case 1: return [Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [buttons[0]])];
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
  List<Widget> body(BuildContext context) {
    return [SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10),
        child: Text(story),
    )];
  }

  List<Widget>? appBarButtons(BuildContext context) {
    return [
      ElevatedButton(
          onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => homePage)),
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
    return ElevatedButton(onPressed: () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: pageBuilder));
      if (action != null) action!();
      },
      child: Text(text));
  }
}
