import 'package:flutter/material.dart';
import '../shared/styled_button.dart';
import '../shared/styled_text.dart';
import 'package:flutter/cupertino.dart';

import 'character_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List characters = ['buchi', 'kelvin', 'peter','paul','dolapo','idris'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const StyledTitle('Your Character'),
          centerTitle: true,
        ),
        body: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: characters.length,
                      itemBuilder: (_,  index){
                        return CharacterCard(characters[index]);
                      }
                  ),
                ),

                StyledButton(
                    onPressed: () {},
                    child: const StyledHeading('Create Card'))
              ],
            )
        )
    );
  }
}
