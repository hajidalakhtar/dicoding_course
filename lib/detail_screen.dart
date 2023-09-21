import 'package:flutter/material.dart';
import 'package:dicoding_submission/model/course.dart';
import 'package:dicoding_submission/silabus_screen.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {

  final Course course;
  const DetailScreen({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Header(),
                Container(
                  margin: EdgeInsets.only(left: 1.0),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child:   Image.network(
                                      course.courseImage, width: 100, height: 100),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 15),
                            Expanded(
                              flex: 9,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    course.name,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    "Level : ${course.level}",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Text(course.description),
                        ),
                        Container(
                          margin:EdgeInsets.only(top: 14),
                          height: 100,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: course.feature.map((feature) {
                              return    Container(
                                width: 300,
                                child: Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(feature.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                                         Text(feature.description)
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),


                          ),
                        ),

                        SizedBox(height: 30),
                        Text("Silabus", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                        Column(
                          children: [
                            SizedBox(
                              child: ListView(
                                shrinkWrap: true,
                                children: course.syllabus.sublist(0,3).map((text) {
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
                            ElevatedButton(onPressed: ()=>{
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return SilabusScreen(course: course);
                            }))
                            }, child: Text("Lihat Silabus"))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          )
        )
    );
  }
}


class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
        backgroundColor: Colors.grey,
        child: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,

        ),
        onPressed: () {
          Navigator.pop(context);
        },
        ),
        ),
        FavoriteButton(),
     ],
    ),
    );
  }
}


class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {

  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,

      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}




