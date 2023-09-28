import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileUi(),
  ));
}

class ProfileUi extends StatelessWidget {
  const ProfileUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile'),
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.all(18),
            child: FaIcon(FontAwesomeIcons.ellipsisVertical),
          )
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 300),
              child: Container(
                height: double.infinity,
                //color: Colors.white,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1695060632262-d2a4c64bb509?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDYyfDZzTVZqVExTa2VRfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=600&q=60'),
                        fit: BoxFit.cover)),
              ),
            ),
            Positioned(
                left: 150,
                bottom: 300,
                child: CircleAvatar(
                  child: Icon(
                    Icons.chat,
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.orange,
                  radius: 30,
                )),
            Positioned(
                right: 150,
                bottom: 300,
                child: CircleAvatar(
                  child: Icon(
                    Icons.add,
                    size: 50,
                  ),
                  backgroundColor: Colors.blue,
                  radius: 30,
                )),
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(''),
                backgroundColor: Colors.blue,
                radius: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
