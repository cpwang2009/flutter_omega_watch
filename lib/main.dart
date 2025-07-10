import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Omega Watches',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

/*
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application.

  final String title;
}
*/
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('頂級瑞士腕錶 歐米茄OMEGA'),
        backgroundColor: Colors.brown[700],
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.watch, color: Colors.white),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 400,
                color: Colors.brown[100],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/OmegaLogo.png',
                          width: 40,
                          height: 40,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'OMEGA 歐米茄',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Omega（歐米茄）創立於1848年，是瑞士著名的高級手錶品牌。以精準、創新與經典設計聞名於世，曾多次成為奧運指定計時、登月任務指定手錶。',
                      style: TextStyle(fontSize: 18, color: Colors.black87),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/omega-seamaster-007.png',
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 20),
                        Image.asset(
                          'assets/omega-de-ville-prestige.png',
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.brown[50],
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8,
                            color: Colors.brown.withValues(),
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        children: const [
                          Text(
                            '品牌特色',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '• 精準計時  \n'
                            '• 經典設計  \n'
                            '• 創新科技  \n'
                            '• 奧運與太空任務指定',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 400,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.brown[200],
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        Column(
                          children: [
                            const Text(
                              '經典系列',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown,
                              ),
                            ),
                            const SizedBox(height: 10),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    child: const Text(
                                      'Speedmaster',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.brown,
                                        fontFamily: 'Brush Script MT',
                                        fontStyle: FontStyle.italic,
                                        letterSpacing: 1.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),

                                //                            const SizedBox(width: 5),
                                Expanded(
                                  child: Container(
                                    child: Image.asset(
                                      'assets/omega-speedmaster-moonwatch.png',
                                      width: 90,
                                      height: 90,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),

                                //                 const SizedBox(width: 10),
                                Expanded(
                                  child: Container(
                                    child: const Text(
                                      'Seamaster',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.brown,
                                        fontFamily: 'Brush Script MT',
                                        fontStyle: FontStyle.italic,
                                        letterSpacing: 1.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),

                                //          const SizedBox(width: 10),
                                Expanded(
                                  child: Container(
                                    child: Image.asset(
                                      'assets/omega-seamaster-diver-300m.png',
                                      width: 90,
                                      height: 90,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
