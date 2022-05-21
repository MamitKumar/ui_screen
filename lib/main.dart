import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 40.0,  color: Colors.white,fontFamily: 'Roboto' ),
          headline4: TextStyle(fontSize: 27.0,  color: Colors.white,fontFamily: 'Roboto' ),
          headline2: TextStyle(fontSize: 20.0, fontFamily: 'Roboto', color: Colors.white ,),
          headline3: TextStyle(fontSize: 17.0, fontFamily: 'Roboto',color: Colors.white),
          headline6: TextStyle(fontSize: 22.0,color: Colors.white ),
          bodyText2: TextStyle(fontSize: 16.0, fontFamily: 'Hind'),
          bodyText1:  TextStyle(fontSize: 14.0, fontFamily: 'Hind',color: Colors.green),
          button:  TextStyle(fontSize: 20.0, fontFamily: 'Hind',color: Colors.black),
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.white12,
        body: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                            colors: [Colors.cyan, Colors.pink]
                        ),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(170),
                          bottomLeft: Radius.circular(170),
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      height: 580,
                      width: double.infinity,
                    ),
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24,bottom: 24),
                    child: Container(
                      height: 565,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(160),
                            bottomLeft: Radius.circular(160),
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(10)),
                        image: DecorationImage(
                            image: NetworkImage("https://images.unsplash.com/photo-1531847422891-a30f6a899fe8?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=770",),fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.all(12),
                child: Text("Amanta Group ",style: Theme.of(context).textTheme.headline3)),
            SizedBox(
              height: 5,
            ),
            Text("Start Here",style: Theme.of(context).textTheme.headline5),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 150,
              height: 40,
              child: RaisedButton(
                  color: Colors.pink,
                  child: Text("Let's Go",style: Theme.of(context).textTheme.headline6),
                  onPressed: (){

                    // Navigator.of(context).push(MaterialPageRoute
                      // (builder: (context)=> null ),);
                  }

              ),
            ),
          ],
        ),
      ),
    );
  }
}
