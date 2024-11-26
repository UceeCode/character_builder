import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  final Map<String, String> character;
  final VoidCallback onTap;

  const CharacterCard({super.key, required this.character, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(character['name'] ?? 'Unknown'),
        trailing: const Icon(Icons.arrow_forward),
        onTap: onTap,
      ),
    );
  }
}
