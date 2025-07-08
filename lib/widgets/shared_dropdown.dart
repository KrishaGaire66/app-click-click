import 'package:flutter/material.dart';
import 'package:click_click/utils/colors.dart'; // Custom color file

class SharedDropdown extends StatefulWidget {
  const SharedDropdown({super.key});

  @override
  State<SharedDropdown> createState() => _SharedDropdownState();
}

class _SharedDropdownState extends State<SharedDropdown> {
  // Holds the currently selected dropdown value
  String? selectedCategory;

  // List of category options to choose from
  final List<String> categories = [
    'Music',
    'Art',
    'Technology',
    'Education',
    'Sports',
  ];

  @override
  Widget build(BuildContext context) {

    return Container(


      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: pureWhite, // Custom color from colors.dart
        borderRadius: BorderRadius.circular(12),

      ),

      // Hides the default underline of DropdownButton
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedCategory, // Currently selected item
          isExpanded: true, // Takes full width
          icon: const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: mutedGray, // Custom icon color
          ),

          // Text shown before selecting anything
          hint: const Text(
            'Event Category',
            style: TextStyle(
              color: mutedGray,
              fontSize: 16,


            ),
          ),

          dropdownColor: Colors.white, // Background color of the dropdown menu

          style: const TextStyle( // Style of selected item
            color: Colors.black87,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),

          borderRadius: BorderRadius.circular(12), // Rounded corners for dropdown

          // Converts each string in categories list into a dropdown menu item
          items: categories.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(value),
              ),
            );
          }).toList(),

          // Called when user selects a new category
          onChanged: (value) {
            setState(() {
              selectedCategory = value;
            });
          },
        ),
      ),
    );
  }
}
