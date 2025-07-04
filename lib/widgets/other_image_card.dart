import 'package:click_click/export.dart';

class OtherImageCard extends StatelessWidget {
  // It's good practice to make properties for dynamic data
  final String eventName;
  final String location;
  final String dateTime;
  final String? imageUrl;
  final Function? onTap; // Optional image URL

  const OtherImageCard({
    Key? key,
    required this.eventName,
    required this.location,
    required this.dateTime,
    this.imageUrl,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Card(
        color: pureWhite,
        // The margin ensures space around the card, preventing it from touching screen edges
        // margin: EdgeInsets.symmetric(
        //   horizontal: 16.0,
        //   vertical: 8.0,
        // ), // Adjust vertical margin as needed
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        shadowColor: Colors.transparent,
        child: Row(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align content to the top
          children: [
            // Image or Placeholder
            Container(
              width: 100,
              height: 112,
              decoration: BoxDecoration(
                color: mutedGray.withValues(alpha: 0.3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                ),
              ),
              child: imageUrl != null && imageUrl!.isNotEmpty
                  ? ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                      ),
                      child: Image.network(
                        imageUrl!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Center(
                            child: Icon(Icons.broken_image, color: mutedGray),
                          );
                        },
                      ),
                    )
                  : Center(
                      child: Text(
                        '100x112',
                        style: TextStyle(color: mutedGray),
                      ),
                    ),
            ),
            SizedBox(width: 16.0), // Space between image and text
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8.0),
                Text(
                  eventName,
                  style: TextStyle(
                    fontSize: 16.0,

                    color: black, // A dark blue color
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  location,
                  style: TextStyle(fontSize: 12.0, color: mutedGray),
                ),
                SizedBox(height: 5.0),
                Text(
                  dateTime,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: neutralRed,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
