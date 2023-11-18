import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  void _convert() {
    reamor = (suhu * 4 / 5);
    kelvin = (suhu + 273.15);
  }

  double suhu = 0;
  double kelvin = 0;
  double reamor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color.fromARGB(255, 55, 135, 255),
        
        title: Text('Konveter Suhu',
          style: TextStyle(color: Colors.white)),
      ),

      body: 
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [

            TextField(
              keyboardType: 
                const TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                labelText: 'Masukan Suhu Dalam Celcius',
              ),
              onChanged: (String value) {
                setState(() {
                  suhu = double.tryParse(value) ?? 0.0;
                });
              },
            ),
        
              Container(
                alignment: Alignment.center,
                child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Suhu dalam Kelvin",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              kelvin.toStringAsFixed(2),
                              style: TextStyle(
                                fontSize: 48,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 40),
                      Container(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Suhu dalam Reamur",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              reamor.toStringAsFixed(2),
                              style: TextStyle(
                                fontSize: 48,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
              ),
      
              Container(
                width: 360,
                child:
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // padding: EdgeInsets.only(left: 50, right: 50),
                    backgroundColor: Color.fromARGB(255, 55, 135, 255),
                    onPrimary: Colors.white, // foreground
                  ),
                  onPressed: () {
                    setState(() {
                      _convert();
                    });
                  },
                  child: Text('Konversi Suhu'),
                ),
              )
      
      
          ],
        ),
      ),
      
    );

  }
}
