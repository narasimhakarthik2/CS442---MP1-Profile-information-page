import 'package:flutter/material.dart';
import '../models/UserInfo.dart';

class BioCard extends StatelessWidget {
  final UserInfo userInfo;

  const BioCard({super.key, required this.userInfo});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .5,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(
                          MediaQuery.of(context).size.width * 0.5, 100.0),
                      bottomRight: Radius.elliptical(
                          MediaQuery.of(context).size.width * 0.5, 100.0),
                    ),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/background.jpg'),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 130),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                userInfo.name,
                                style: TextStyle(
                                  color: Colors.blueGrey.shade50,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              userInfo.position,
                              style: TextStyle(
                                color: Colors.blueGrey.shade50,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              userInfo.company,
                              style: TextStyle(
                                color: Colors.blueGrey.shade50,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
          child: Card(
            elevation: 4,
            color: Colors.blueGrey.shade50,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                userInfo.description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.blueGrey.shade900,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
          ),
        ),
         Padding(
          padding: const EdgeInsets.fromLTRB(8, 48, 8, 50),
          child: Card(
            color: Colors.blueGrey.shade50,
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Hacker',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blueGrey.shade900
                    ),
                  ),
                  Text(
                    '|',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blueGrey.shade900
                    ),
                  ),
                  Text(
                    'Developer',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blueGrey.shade900
                    ),
                  ),
                  Text(
                    '|',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blueGrey.shade900
                    ),
                  ),
                  Text(
                    'Android',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blueGrey.shade900
                    ),
                  ),
                  Text(
                    '|',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blueGrey.shade900
                    ),
                  ),
                  Text(
                    'DevOps',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blueGrey.shade900
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
