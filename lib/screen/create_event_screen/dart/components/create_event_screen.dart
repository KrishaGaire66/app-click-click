import 'package:click_click/export.dart';
import 'package:click_click/screen/create_event_screen/dart/components/widgets/data_time_picker.dart';
import 'package:click_click/screen/create_event_screen/dart/components/widgets/event_type_selector.dart';
import 'package:click_click/screen/create_event_screen/dart/components/widgets/event_image_uploader.dart';
import 'package:click_click/utils/app_padding.dart';
import 'package:click_click/widgets/shared_dropdown.dart';

class CreateEventScreen extends StatefulWidget {
  const CreateEventScreen({super.key});

  @override
  State<CreateEventScreen> createState() => _CreateEventScreenState();
}

class _CreateEventScreenState extends State<CreateEventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
        title: "Create Event",
        leading: Icon(Icons.arrow_back_ios_new_rounded),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 90,),
              // Event Category Dropdown
              SharedDropdown(),
              SizedBox(height: 20),

              // Venue Name
              SharedTextField(hintText: "Venue Name"),
              SizedBox(height: 20),

              // Venue Address
              SharedTextField(hintText: "Venue Address"),
              SizedBox(height: 20),

              // Private/Public Event Selector
              EventTypeSelector(),
              SizedBox(height: 20),

              // Date and Time Pickers (Start Date, End Date, Start Time, End Time)
              DateTimePicker(),
              SizedBox(height: 20),

              // Event Image uploader
              EventImageUploader(),
              SizedBox(height: 12),

              // Event Description Field
              SharedTextField(hintText: "Event description", maxLines: 4),
              SizedBox(height: 24),

              // Next Step Button
              SizedBox(
                //width: double.infinity,
                child: Shared_Button(text: "Next Step",),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}