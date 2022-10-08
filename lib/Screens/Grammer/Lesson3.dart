import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://google.com');

class Lesson3 extends StatefulWidget {
  const Lesson3({super.key});

  @override
  State<Lesson3> createState() => _Lesson3State();
}

class _Lesson3State extends State<Lesson3> {
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: Color.fromARGB(255, 61, 105, 147),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 61, 105, 147),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, "Lessons");
                },
                icon: Icon(Icons.arrow_back)),
            Text("Lesson 3 - family"),
            // SizedBox(
            //   width: 200,
            // ),
            IconButton(
                onPressed: () {
                  // edit the home
                  Navigator.popAndPushNamed(context, "Home");
                },
                icon: Icon(Icons.home)),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 61, 105, 147),
        child: ListView(
          children: [
            SizedBox(
              height: 25,
            ),
            Text(
              "Please watch the next video",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Divider(
              color: Colors.white,
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    _launchUrl;
                  });
                },
                icon: Icon(Icons.youtube_searched_for),
                label: Text("Watch Now"))
          ],
        ),
      ),
    );
  }
}
