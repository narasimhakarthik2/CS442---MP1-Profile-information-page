import 'package:cs442_mp1/lib/models/UserInfo.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  final UserInfo userInfo;

  const ContactCard({super.key, required this.userInfo});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            'Contact Information',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey.shade900,
            ),
          ),
        ),
        Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildContactRow('assets/images/phone.png', userInfo.phone),
                _buildContactRow('assets/images/gmail.png', userInfo.email),
                _buildContactRow('assets/images/location-pin.png', userInfo.address),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContactRow(String imagePath, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 24,
            width: 24,
            margin: const EdgeInsets.only(right: 40),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontFamily: 'Arial',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
