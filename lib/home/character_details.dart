import 'package:flutter/material.dart';

class CharacterDetails extends StatelessWidget {
  final String name;
  final String age;
  final String profession;
  final String address;
  final String description;

  const CharacterDetails({
    super.key,
    required this.name,
    required this.age,
    required this.profession,
    required this.address,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          name,
          style: TextStyle(
            color: Colors.white, // Set the title text color to white
            fontSize: 26, // Increase the font size
            fontWeight: FontWeight.bold, // Optional: make it bold
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Name Section
              _buildSectionHeader('Name'),
              _buildDetailCard(name),

              // Age Section
              const SizedBox(height: 20),
              _buildSectionHeader('Age'),
              _buildDetailCard(age),

              // Profession Section
              const SizedBox(height: 20),
              _buildSectionHeader('Profession'),
              _buildDetailCard(profession),

              // Address Section
              const SizedBox(height: 20),
              _buildSectionHeader('Address'),
              _buildDetailCard(address),

              // Description Section
              const SizedBox(height: 20),
              _buildSectionHeader('Description'),
              _buildDetailCard(description, multiline: true),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build section headers
  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  // Helper method to build the detail cards
  Widget _buildDetailCard(String content, {bool multiline = false}) {
    return Card(
      elevation: 5,
      shadowColor: Colors.black.withOpacity(0.3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          content,
          style: TextStyle(
            fontSize: multiline ? 18 : 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            height: multiline ? 1.5 : 1.2,
          ),
          maxLines: multiline ? null : 1,
          overflow: multiline ? TextOverflow.visible : TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
