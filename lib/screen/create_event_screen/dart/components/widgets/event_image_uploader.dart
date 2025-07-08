import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EventImageUploader extends StatefulWidget {
  @override
  _EventImageUploaderState createState() => _EventImageUploaderState();
}

class _EventImageUploaderState extends State<EventImageUploader> {
  final List<File> _images = [];

  Future<void> _pickImage() async {
    if (_images.length >= 5) return;
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _images.add(File(pickedFile.path));
      });
    }
  }

  void _removeImage(int index) {
    setState(() {
      _images.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Event image", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Row(
          children: [
            ..._images.asMap().entries.map((entry) {
              int index = entry.key;
              File file = entry.value;
              return Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 98,
                    height: 98,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: FileImage(file),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 4,
                    right: 14,
                    child: GestureDetector(
                      onTap: () => _removeImage(index),
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.close, size: 16, color: Colors.red),
                      ),
                    ),
                  ),
                ],
              );
            }).toList(),
            if (_images.length < 5)
              GestureDetector(
                onTap: _pickImage,
                child: Container(
                  width: 98,
                  height: 98,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.camera_alt, color: Colors.grey),
                ),
              ),
          ],
        ),
        SizedBox(height: 8),
        Text(
          "Upload up to 5 image",
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ],
    );
  }
}
