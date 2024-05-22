import 'dart:async';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pedometer/pedometer.dart';
import 'package:cardio_credits/app/modules/auth/leaderboard/leader_board.dart';
import 'package:cardio_credits/app/modules/auth/home/nav_bar.dart';
import 'package:cardio_credits/app/modules/Base/button_primary.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late StreamSubscription<StepCount> _subscription;
  int _stepCount = 0;
  int _maxSteps = 10000; // Set maximum steps to reach 100%

  @override
  void initState() {
    super.initState();
    _initPedometer();
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  Future<void> _initPedometer() async {
    _subscription = Pedometer.stepCountStream.listen((StepCount event) {
      setState(() {
        _stepCount = event.steps;
      });
    });
  }

  void _incrementSteps() {
    setState(() {
      _stepCount += 100;
    });
  }

  void _decrementSteps() {
    setState(() {
      _stepCount -= 100;
      if (_stepCount < 0) _stepCount = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    double percentage = _stepCount / _maxSteps; // Calculate percentage
    percentage = percentage.clamp(0.0, 1.0); // Clamp percentage between 0 and 1

    return Scaffold(
      drawer: NavBar(), // Assuming you have a NavBar widget
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Color.fromARGB(248, 179, 25, 25),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(248, 179, 25, 25), // Top color
              Color.fromARGB(204, 204, 56, 202), // Bottom color
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20.0),
              ClipOval(
                child: Image.asset(
                  'assets/images/Profile.jpeg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Welcome User!',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 40.0),
              CircularPercentIndicator(
                radius: 60.0,
                lineWidth: 5.0,
                percent: percentage, // Use calculated percentage
                progressColor: Colors.green,
                center: Icon(
                  Icons.directions_walk, // Using the walking icon from Material Icons
                  color: Colors.green,
                  size: 40,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'You Completed',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                '$_stepCount Steps',
                style: TextStyle(
                  fontSize: 30, // Adjust the font size as needed
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'this month so far',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 80),
              buttonPrimary(
                context,
                "View Leaderboard",
                null,
                200,
                () {
                  // context.push(LeaderboardScreen.routeName,
                  context.push(LeaderboardScreen.routeName,
                  );
                },
                color: Colors.blue,
              ),
              SizedBox(height: 20),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // children: <Widget>[
              //   ElevatedButton(
              //     onPressed: _incrementSteps,
              //     child: Text('+'),
              //   ),
              //   ElevatedButton(
              //     onPressed: _decrementSteps,
              //     child: Text('-'),
              //   ),
              // ],
            ),
          ],
        ),
      ),
    ),
  );
  }
}




// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:pedometer_app/app/modules/Base/button_primary.dart';
// import 'package:pedometer_app/app/modules/auth/home/nav_bar.dart';
// import 'package:percent_indicator/percent_indicator.dart';
// import 'package:pedometer/pedometer.dart';
// import 'package:pedometer_app/app/modules/auth/leaderboard/leader_board.dart';
// import 'package:go_router/go_router.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   static const routeName = '/home';

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   late StreamSubscription<StepCount> _subscription;
//   int _stepCount = 0;
//   int _maxSteps = 10000; // Set maximum steps to reach 100%

//   @override
//   void initState() {
//     super.initState();
//     _initPedometer();
//   }

//   @override
//   void dispose() {
//     _subscription.cancel();
//     super.dispose();
//   }

//   Future<void> _initPedometer() async {
//     _subscription = Pedometer.stepCountStream.listen((StepCount event) {
//       setState(() {
//         _stepCount = event.steps;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     double percentage = _stepCount / _maxSteps; // Calculate percentage
//     percentage = percentage.clamp(0.0, 1.0); // Clamp percentage between 0 and 1

//     return Scaffold(
//       drawer: NavBar(), // Assuming you have a NavBar widget
//       appBar: AppBar(
//         title: Text(''),
//         backgroundColor: Color.fromARGB(248, 179, 25, 25),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//               Color.fromARGB(248, 179, 25, 25), // Top color
//               Color.fromARGB(204, 204, 56, 202), // Bottom color
//             ],
//           ),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               SizedBox(height: 20.0),
//               ClipOval(
//                 child: Image.asset(
//                   'assets/images/Profile.jpeg',
//                   width: 100,
//                   height: 100,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 20.0),
//                 child: Text(
//                   'Welcome User!',
//                   style: TextStyle(
//                     fontSize: 24,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 40.0),
//               CircularPercentIndicator(
//                 radius: 60.0,
//                 lineWidth: 5.0,
//                 percent: percentage, // Use calculated percentage
//                 progressColor: Colors.green,
//                 center: Icon(
//                   Icons.directions_walk, // Using the walking icon from Material Icons
//                   color: Colors.green,
//                   size: 40,
//                 ),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'You Completed',
//                 style: TextStyle(
//                   color: Colors.white,
//                 ),
//               ),
//               Text(
//                 '$_stepCount Steps',
//                 style: TextStyle(
//                   fontSize: 30, // Adjust the font size as needed
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               Text(
//                 'this month so far',
//                 style: TextStyle(
//                   color: Colors.white,
//                 ),
//               ),
//               SizedBox(height: 80),
//               buttonPrimary(
//                 context,
//                 "View Leaderboard",
//                 null,
//                 200,
//                 () {
//                   context.push(LeaderboardScreen.routeName);
//                 },
//                 color: Colors.blue,
//               ),
//               SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
