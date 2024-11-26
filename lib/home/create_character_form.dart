import 'package:flutter/material.dart';

class CreateCharacterForm extends StatefulWidget {
  const CreateCharacterForm({super.key});

  @override
  State<CreateCharacterForm> createState() => _CreateCharacterFormState();
}

class _CreateCharacterFormState extends State<CreateCharacterForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController professionController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Character'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              style: const TextStyle(color: Colors.white), // Input text color
              decoration: const InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(color: Colors.white), // Label color
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white), // Border color
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white), // Focused border color
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: ageController,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'Age',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: professionController,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'Profession',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: addressController,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'Address',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: descriptionController,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'Description',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final Map<String, String> newCharacter = {
                  'name': nameController.text,
                  'age': ageController.text,
                  'profession': professionController.text,
                  'address': addressController.text,
                  'description': descriptionController.text,
                };
                Navigator.pop(context, newCharacter);
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
