import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projetoarquivos/common/list.dart';
import 'package:projetoarquivos/pages/login.dart';
import 'package:projetoarquivos/pages/flutter_course.dart';
import 'package:projetoarquivos/pages/java_course.dart';
import 'package:projetoarquivos/pages/python_course.dart';
import 'package:projetoarquivos/pages/register.dart';

class SideBar extends StatefulWidget {
  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cursos'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.person_outlined),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LoginPage()));
              },
            )
          ],
          backgroundColor: Color.fromARGB(255, 95, 0, 99),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          )),
        ),
        drawer: Drawer(
            backgroundColor: Color.fromARGB(255, 39, 39, 39),
            child: Container(
              width: 220,
              height: double.infinity,
              child: Column(
                children: [
                  ListTile(
                    tileColor: Color.fromARGB(255, 0, 0, 0),
                    contentPadding: EdgeInsets.all(13),
                    leading: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      child: Icon(Icons.person),
                    ),
                    title: Text(
                      'Andre Luis',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    subtitle: Text(
                      'Professor',
                      style: TextStyle(
                        color: Color.fromARGB(255, 169, 169, 169),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  ListTile(                    
                    leading:  CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      child: Icon(Icons.home),
                    ),
                    title: Text('HOME',style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    hoverColor: Color.fromARGB(120, 0, 255, 38),
                    tileColor: Color.fromARGB(255, 86, 105, 61),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SideBar()));
                    },
                  ),  
                  SizedBox(height: 10.0),
                  Icon(Icons.cases_outlined, color: Color.fromARGB(255, 175, 175, 175),),
                  Text('cursos',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Color.fromARGB(255, 227, 227, 227),fontSize: 25,
                          )),                                  
                  SizedBox(height: 10.0),
                  ListTile(                    
                    leading:  CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      child: Icon(Icons.code),
                    ),
                    title: Text('Flutter',style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    hoverColor: Color.fromARGB(120, 90, 61, 255),
                    tileColor: Color.fromARGB(255, 75, 75, 75),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FlutterCourse()));
                    },
                  ),
                  SizedBox(height: 10.0),
                  ListTile(
                    leading:  CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      child: Icon(Icons.code),
                    ),
                    title: Text('Python',style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    hoverColor: Color.fromARGB(120, 66, 255, 72),
                    tileColor: Color.fromARGB(255, 75, 75, 75),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PythonCourse()));
                    },
                  ),
                  SizedBox(height: 10.0),
                  ListTile(
                    leading:  CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      child: Icon(Icons.code),
                    ),
                    title: Text('Java',style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    hoverColor: Color.fromARGB(120, 255, 43, 43),
                    tileColor: Color.fromARGB(255, 75, 75, 75),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => JavaCourse()));
                    },
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    leading:  CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      child: Icon(Icons.code),
                    ),
                    title: Text('REGISTER',style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    hoverColor: Color.fromARGB(120, 255, 43, 43),
                    tileColor: Color.fromARGB(255, 75, 75, 75),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RegisterCourse()));
                    },
                  ),
                ],
              ),
            )),
        backgroundColor: Color.fromARGB(255, 185, 185, 185),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: GridView.builder(
              itemCount: ListCourses().courses.length,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 240,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 1.0,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, ListCourses().courses [index]['route']!);
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: 80,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(10)),
                                  gradient: LinearGradient(
                                    colors: [
                                      ListCourses().courses[index]['color'],
                                      ListCourses().courses[index]['color'].withOpacity(0.7),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16.0),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      ListCourses().courses[index]['name']!,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 60,
                                right: 10,
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.black, width: 2),
                                  ),
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Colors.white,
                                    child: Icon(Icons.person,
                                        size: 30,
                                        color: ListCourses().courses[index]['color']),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.folder, color: Colors.grey),
                                Icon(Icons.person, color: Colors.grey),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ));
  }
}
