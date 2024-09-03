import 'package:flutter/material.dart';
import 'package:tugas2_tpm/main.dart';
import 'package:tugas2_tpm/pages/ganjilgenap.dart';
import 'package:tugas2_tpm/pages/kalkulator.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePageScreen(),
    );
  }
}

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page (063||074||079)'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: _logOut,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(

              spacing: 10.0, // Spasi antara kotak-kotak
              runSpacing: 10.0, // Spasi antara baris kotak
              children: [
                Container(
                  width: 200,
                  height: 100,
                  color: Colors.lightBlueAccent,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Daniel Hansel Christiawan', style: TextStyle(color: Colors.white)),
                        Text('123210063', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  height: 100,
                  color: Colors.lightBlueAccent,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Zulfians Adnan', style: TextStyle(color: Colors.white)),
                        Text('123210074', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  height: 100,
                  color: Colors.lightBlueAccent,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Alfin Shalahuddin Ahmad', style: TextStyle(color: Colors.white)),
                        Text('123210079', style: TextStyle(color: Colors.white)),
                      ],
                    ),

                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            MaterialButton(
                    onPressed: () {
                      _kalkulator();
                    },
              height: 200,
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text(
                      'KALKULATOR',
                      style: TextStyle(fontSize: 30.0), // Adjust font size here
                    ),
                    minWidth: double.infinity,
                  ),
            SizedBox(height: 20),


            MaterialButton(
                    onPressed: () {
                      _ganjilGenap();
                    },
              height: 200,
                    color: Colors.blue.shade800,
                    textColor: Colors.white,
                    child: Text(
                      'GANJIL GENAP',
                      style: TextStyle(fontSize: 30.0), // Adjust font size here
                    ),
                    minWidth: double.infinity,
                  ),



          ],
        ),
        ),
      ),
    );
  }


  void _logOut() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => MyApp()),
    );
  }

  void _ganjilGenap() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => GanjilGenap()),
    );
  }

  void _kalkulator() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Kalkulator()),
    );
  }
}

