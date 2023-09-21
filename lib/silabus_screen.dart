import 'package:flutter/material.dart';

import 'detail_screen.dart';
import 'model/course.dart';

class SilabusScreen extends StatelessWidget {
  final Course course;
  const SilabusScreen({Key? key, required this.course}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              child: ListView(
                shrinkWrap: true,
                children: course.syllabus.map((text) {
                  return Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    child: Text(
                                      text,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ),
                                  FavoriteButton(),
                                ],
                              )
                          ),
                        ),
                      )
                  );
                }).toList(),
              ),
            ),
            ElevatedButton(onPressed: () {
             Navigator.pop(context);
            }, child: Text("Kembali"))
          ],
        ),
      ) ,
    );
  }
}
