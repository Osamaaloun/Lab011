import 'package:flutter/material.dart';

class Lessons extends StatefulWidget {
  const Lessons({super.key});

  @override
  State<Lessons> createState() => _LessonsState();
}

class _LessonsState extends State<Lessons> {
  List subTitles = [
    "Adjectives",
    "Body Parts",
    "Family",
    "House and Class",
    "Animals",
    "Opposite Adjectives",
    "Numbers",
    "Time",
    "Sport",
    "Jobs",
    "Transportation"
  ];
  List lessonsRoutes = ["Lesson_1", "Lesson_2", "Lesson_3"];
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
                  Navigator.popAndPushNamed(context, "study");
                },
                icon: Icon(Icons.arrow_back)),
            Text("Lessons"),
            // SizedBox(
            //   width: 193,
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
        child: ListView.builder(
          itemCount: subTitles.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.popAndPushNamed(context, "${lessonsRoutes[index]}");
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return Lesson1();
                  // }));
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 35, 86, 133),
                  border: Border.all(
                    width: 1,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                padding: const EdgeInsets.all(3.0),
                margin: const EdgeInsets.all(15.0),
                child: ListTile(
                  title: Text(
                    "Lesson ${index + 1}",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    "${subTitles[index]}",
                    style: TextStyle(color: Colors.grey),
                  ),
                  trailing: Icon(
                    Icons.start,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
