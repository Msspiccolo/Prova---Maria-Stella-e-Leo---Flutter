import 'package:flutter/material.dart';
import 'package:projetoarquivos/common/collors.dart';
import 'package:projetoarquivos/pages/sidebar.dart';
// retirar essa linha

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    final TextEditingController luser = TextEditingController();
    final TextEditingController lpassw = TextEditingController();
    return Scaffold(
        // backgroundColor: Colors.deepPurpleAccent,
        body: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [MCollors.LPTop, MCollors.LPBottom])),
            child: Padding(
                padding: EdgeInsets.zero,
                child: Center(
                  child: Container(
                  height: height * 0.8,
                  width: height * 0.7,
                  padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.white,
                      width: 0.05,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/logo.png",
                        height: 100,
                      ),
                      SizedBox(height: 80.0),
                      TextFormField(
                        controller: luser,
                        validator: (value) {
                          luser.text = value!;
                        },
                        style: new TextStyle(color: Colors.black, fontSize: 15),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          labelText: 'USUARIO',
                          fillColor: Color.fromARGB(221, 255, 255, 255),
                          filled: true,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      TextFormField(
                        controller: lpassw,
                        validator: (value) {
                          lpassw.text = value!;
                        },
                        obscureText: true,
                        style: new TextStyle(color: Colors.black, fontSize: 15),
                        decoration: InputDecoration(
                          filled: true,
                          prefixIcon: Icon(Icons.lock),
                          labelText: 'PASSWORD',
                          fillColor: Color.fromARGB(221, 255, 255, 255),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      ButtonTheme(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  textStyle: TextStyle(fontSize: 20),
                                  foregroundColor: Colors.white,
                                  backgroundColor:
                                      Color.fromARGB(255, 44, 111, 255)),
                              onPressed: () => {
                                    if (luser.text == 'andre' &&
                                        lpassw.text == '1234')
                                      {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SideBar()))
                                      }
                                    else
                                      {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                backgroundColor: Colors.red,
                                                content: Text(
                                                    'Usuario ou Senha invalida')))
                                      }
                                  },
                              child: Text('Log In'))),
                    ],
                  ),
                )))));
  }
}
