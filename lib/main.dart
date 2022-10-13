import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Exercicio Prova"),
        ),
        body: Container(
          child: Column(
            children: [
              Image.network('https://i0.wp.com/crast.net/img/2022/07/Netflix-has-two-secret-Stranger-Things-games-so-you-can.jpg?resize=1140,570',),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 90,
                    child: Center(
                      child: Text("Stranger Things 1984",textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Container(
                        child: Text("Adventure", style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)
                      // child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/DJCTQ_-_12.svg/1024px-DJCTQ_-_12.svg.png',),
                    ),
                  ),
                  Container(
                    child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/DJCTQ_-_12.svg/1024px-DJCTQ_-_12.svg.png',
                        fit: BoxFit.fill,
                        width: 30),
                  ),
                  Container(
                    child: Icon(Icons.verified, color: Colors.blue),
                    margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  ),
                  Container(
                    child: Text("Instalado", style: TextStyle(color: Colors.white)),
                    margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 10, top: 40, bottom: 10),
                      child: Container(
                        child: Text("Informe os seus dados:",style: TextStyle(color: Colors.white, fontSize:25, fontWeight: FontWeight.bold)
                        ),
                      )
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Nome",
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    )

                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                        margin: EdgeInsets.all(5),
                        child: TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Email",
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      )

                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      height: 35,
                        child: ElevatedButton(
                            onPressed: (){
                              print("Cadastrado");
                            },
                            child: Text("Cadastrar!")
                        )
                    )
                  ),
                  Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(left: 30, right: 10, bottom: 1),
                          child: Icon(Icons.share, size: 35, color: Colors.white,)),
                      Container(
                          margin: const EdgeInsets.only(left: 30, right: 10),
                          child: Text("Share", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white))
                      )

                    ]
                  ),
                ],
              ),
            ],
          )

        )
      ),
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
    );
  }
}
