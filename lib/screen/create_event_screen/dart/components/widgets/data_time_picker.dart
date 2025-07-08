import '../../../../../export.dart';

class DateTimePicker extends StatelessWidget {
  const DateTimePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildPickerBox(
              label: "Start Date:",
              icon: Icons.calendar_today_outlined,
              onTap: () {
                // Show date picker
              },
            ),
            _buildPickerBox(
              label: "End Date:",
              icon: Icons.calendar_today_outlined,
              onTap: () {
                // Show date picker
              },
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildPickerBox(
              label: "Start Time:",
              icon: Icons.access_time,
              onTap: () {
                // Show time picker
              },
            ),
            _buildPickerBox(
              label: "End Time:",
              icon: Icons.access_time,
              onTap: () {
                // Show time picker
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPickerBox({
    required String label,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 19,
                  color: mutedGray,
                ),
              ),
              Icon(
                icon,
                size: 20,
                color: mutedGray,
              ),
            ],
          ),
        ),
      ),
    );
  }
  }
