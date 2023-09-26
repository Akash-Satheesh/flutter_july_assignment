import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    home: Contact(),
  ));
}

// ignore: must_be_immutable
class Contact extends StatelessWidget {
  var title = [
    "Akash",
    'AKash2',
    'Achan',
    'Amma',
    'Asha',
    'Devan',
    'Rebin',
    'Arya',
    'Devika',
    'Keerthi',
  ];
  var subti = [
    "9645511065",
    "9744133978",
    "9745645448",
    "9745215428",
    "8078542897",
    "9567445062",
    "8882072266",
    "7012314090",
    "8369921163",
    "6305139640"
  ];
  var icons = [
    Icons.contact_phone,
    Icons.contact_phone,
    Icons.contact_phone,
    Icons.contact_phone,
    Icons.contact_phone,
    Icons.contact_phone,
    Icons.contact_phone,
    Icons.contact_phone,
    Icons.contact_phone,
    Icons.contact_phone,
  ];
  Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contacts'),
        ),
        body: ListView(
          children: List.generate(
              10,
              (index) => Card(
                    child: ListTile(
                      title: Text(title[index]),
                      subtitle: Text('${subti[index]}'),
                      leading: Icon(icons[index]),
                      trailing: Icon(Icons.call),
                    ),
                  )),
        ));
  }
}
