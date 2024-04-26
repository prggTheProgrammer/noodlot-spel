import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  final String title;
  final Image? icon;
  final String story;
  final List<Button> buttons;


  const GamePage(this.title, this.story, this.buttons, {super.key, this.icon});

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

  @override
  Widget build(BuildContext context) {
    buttons.sublist(1);
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
    ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          if (icon != null) icon!,
          Text(story), //TODO: scrollable
          ... createButtons() //add buttons to Column

        ],),
      ),
    );
  }

}

class Button extends StatelessWidget {
  final String text;
  final String page;
  final Function? action;

  const Button(this.text, this.page, {super.key, this.action});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {
      Navigator.pushReplacementNamed(context, page);
      if (action != null) action!();
      },
      child: Text(text));
  }
}