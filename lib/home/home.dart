import 'package:flutter/material.dart';
import 'character_card.dart';
import 'character_details.dart';
import 'create_character_form.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Explicitly declare the type of the characters list
  final List<Map<String, String>> characters = [];

  void _addCharacter(Map<String, String> character) {
    setState(() {
      characters.add(character);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('YOUR CHARACTERS', style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.black,

      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: characters.isEmpty
                  ? const Center(
                child: Text(
                  'No characters yet. Create one!',
                  style: TextStyle(fontSize: 20),
                ),
              )
                  : ListView.builder(
                itemCount: characters.length,
                itemBuilder: (_, index) {
                  final Map<String, String> character = characters[index];
                  return CharacterCard(
                    character: character,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CharacterDetails(
                            name: character['name'] ?? 'Unknown',
                            age: character['age'] ?? 'Unknown',
                            profession: character['profession'] ?? 'Unknown',
                            address: character['address'] ?? 'Unknown',
                            description: character['description'] ?? 'Unknown',
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                final Map<String, String>? newCharacter =
                await Navigator.push<Map<String, String>>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateCharacterForm(),
                  ),
                );
                if (newCharacter != null) {
                  _addCharacter(newCharacter);
                }
              },
              child: const Text('CREATE CARD', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
