import 'package:flutter/material.dart';

class AboutUI extends StatelessWidget {
  const AboutUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 11,
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width / 11 * 9,
                  alignment: Alignment.center,
                  child: const Text(
                    'About Me',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ))
            ],
          ),
        )
      ],
    ));
  }
}
