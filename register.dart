import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projetoarquivos/common/collors.dart';

class RegisterCourse extends StatefulWidget {
  const RegisterCourse({super.key});

  @override
  State<RegisterCourse> createState() => _RegisterCourseState();
}

class _RegisterCourseState extends State<RegisterCourse> {
  int _value = 1;
  String coursename = '';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    final TextEditingController lnamecourse = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: Text('REGISTRO'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 39, 50, 255),
        ),
        // backgroundColor: Colors.deepPurpleAccent,
        body: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [MCollors.LPTopr, MCollors.LPBottomr])),
            child: Padding(
                padding: EdgeInsets.zero,
                child: Center(
                    child: Container(
                  height: height * 0.5,
                  width: height * 0.4,
                  padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(1),
                    // borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.white,
                      width: 0.05,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 10.0),
                      TextFormField(
                        controller: lnamecourse,
                        validator: (value) {
                          lnamecourse.text = value!;
                        },
                        style: new TextStyle(color: Colors.black, fontSize: 15),
                        decoration: InputDecoration(
                          label: Text('NOME DO CURSO'),
                          prefixIcon: Icon(Icons.email),
                          fillColor: Color.fromARGB(221, 255, 255, 255),
                          filled: true,
                        ),                        
                      ),
                      SizedBox(height: 5.0),
                      Radio(
                          hoverColor: Color.fromARGB(255, 38, 74, 253),
                          value: 1,
                          groupValue: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value!;
                            });
                          }),
                      Radio(
                          hoverColor: const Color.fromARGB(255, 255, 7, 7),
                          value: 2,
                          groupValue: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value!;
                            });
                          }),
                      Radio(
                          hoverColor: const Color.fromARGB(255, 85, 255, 7),
                          value: 3,
                          groupValue: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value!;
                            });
                          }),
                      SizedBox(height: 30.0),                                         
                      ButtonTheme(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  textStyle: TextStyle(fontSize: 20),
                                  foregroundColor: Colors.white,
                                  backgroundColor:
                                      Color.fromARGB(255, 44, 111, 255)),
                              onPressed: () => {                                    
                                    coursename = lnamecourse.text,
                                    ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                backgroundColor: Color.fromARGB(255, 15, 43, 0),
                                                content: Text(
                                                    'Curso $coursename cadastrado com sucesso'))),                                                                                     
                                  },
                              child: Text('CADASTRAR'))),
                    ],                    
                  ),                  
                )))));
  }
}
