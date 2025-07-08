import 'package:flutter/material.dart';

class EventTypeSelector extends StatefulWidget {
  const EventTypeSelector({super.key});

  @override
  State<EventTypeSelector> createState() => _EventTypeSelectorState();
}

class _EventTypeSelectorState extends State<EventTypeSelector> {
  String selectedEvent = 'private';

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildRadioButton('Private Event', 'private'),
        SizedBox(width: 20),
        _buildRadioButton('Public Event', 'public'),
      ],
    );
  }

  Widget _buildRadioButton(String label, String value) {
    final bool isSelected = selectedEvent == value;

    return InkWell(
      onTap: () {
        setState(() {
          selectedEvent = value;
        });
      },
      borderRadius: BorderRadius.circular(20),
      child: Row(
        children: [
          Container(
            width: 22,
            height: 22,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ? Color(0xFF246BFD) : Color(0xFF1C2A3A),
                width: 2,
              ),
              color: isSelected ? Color(0xFF246BFD) : Colors.transparent,
            ),
            child: isSelected
                ? Icon(Icons.check, size: 14, color: Colors.white)
                : null,
          ),
          SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF1C2A3A),
            ),
          )
        ],
      ),
    );
  }
}
