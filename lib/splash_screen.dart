import 'package:calculator/calculator_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const CalculatorScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/logo.png'),
            ),
            Text(
              'Calculator',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class splashScreen extends StatefulWidget {
//   const splashScreen({super.key});

//   @override
//   State<splashScreen> createState() => _splashScreenState();
// }

// class _splashScreenState extends State<splashScreen> 

//  {
//  @override
//   void initState()
//   {
//     super.initState();
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

//     Future.delayed(Duration(seconds: 2),() { 
//       Navigator.of(context).pushReplacement(MaterialPageRoute(
//         builder : (_) => const CalculatorScreen(),
//       ));
//     });
//   }
//   @override
//   void dispose()
//   {
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
//     overlays: SystemUiOverlay.values);
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container( 
//         width: double.infinity,

//         decoration: BoxDecoration(
//           gradient: LinearGradient(colors:[Colors.blue,Colors.purple],
//           begin: Alignment.topRight,
//           end: Alignment.bottomLeft,
//           )
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [ 
            
//           Icon(Icons.calculate,
//           size: 80,
//           color: Colors.white,),
//           SizedBox(
//             height: 20,),
//             Text('Calculator',
//             style: TextStyle(fontStyle: FontStyle.italic,
//             fontSize:32),
//             )
          
//         ]
//         ),
//       ),
//     );
//   }
// }