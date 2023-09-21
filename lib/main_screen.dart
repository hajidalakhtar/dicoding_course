import 'package:flutter/material.dart';
import 'package:dicoding_submission/detail_screen.dart';
import 'package:dicoding_submission/model/course.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Course Dicoding'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
              return CourseList();
        },
    ),
    );
  }
}

class CourseList extends StatelessWidget {
  const CourseList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return   ListView.builder(
      itemBuilder: (context, index) {
        final Course course = courseList[index];
        return Padding(
          padding: const EdgeInsets.only(left: 6, right: 6, bottom: 0, top:0),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(course: course);
              }));
            },
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child:  Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Image.network(course.courseImage),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              course.name,
                              style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 20,),
                            Column(
                              children: [
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.star,
                                        size: 20.0
                                     ),
                                    SizedBox(width: 5,),
                                    RichText(
                                      text: TextSpan(
                                        text: 'Level : ',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '${course.level}',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.person,
                                    size:20.0
                                  ),
                                    SizedBox(width: 5,),
                                    RichText(
                                      text: TextSpan(
                                        text: '${course.registeredStudents.toString()} ',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'Siswa Mendaftar',
                                            style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ),
        );
      },
      itemCount: courseList.length,
    )
    ;
  }
}
