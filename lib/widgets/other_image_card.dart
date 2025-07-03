import 'package:flutter/material.dart';

class OtherImageCard extends StatelessWidget {
  // It's good practice to make properties for dynamic data
  final String eventName;
  final String location;
  final String dateTime;
  final String? imageUrl; // Optional image URL

  const OtherImageCard({
    Key? key,
    required this.eventName,
    required this.location,
    required this.dateTime,
    this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NewWidget(
      imageUrl: imageUrl,
      eventName: eventName,
      location: location,
      dateTime: dateTime,
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required this.imageUrl,
    required this.eventName,
    required this.location,
    required this.dateTime,
  });

  final String? imageUrl;
  final String eventName;
  final String location;
  final String dateTime;

  @override
  Widget build(BuildContext context) {
    return Card(
      // The margin ensures space around the card, preventing it from touching screen edges
      margin: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ), // Adjust vertical margin as needed
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 4.0,
      child: Row(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Align content to the top
        children: [
          // Image or Placeholder
          Container(
            width: 100,
            height: 112,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: imageUrl != null && imageUrl!.isNotEmpty
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      imageUrl!,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Center(
                          child: Icon(
                            Icons.broken_image,
                            color: Colors.grey[600],
                          ),
                        );
                      },
                    ),
                  )
                : Center(
                    child: Text(
                      '100x112',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
          ),
          SizedBox(width: 16.0), // Space between image and text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                eventName,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF333366), // A dark blue color
                ),
              ),
              SizedBox(height: 4.0),
              Text(
                location,
                style: TextStyle(fontSize: 14.0, color: Colors.grey[600]),
              ),
              SizedBox(height: 8.0),
              Text(
                dateTime,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.red,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
