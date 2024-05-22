import 'package:flutter/material.dart';

class LeaderboardScreen extends StatelessWidget {


  final int? stepCount;
  LeaderboardScreen({Key? key, this.stepCount}) : super(key: key); // Update constructor





  final List<LeaderboardEntry> leaderboardEntries = [
    LeaderboardEntry('John Doe', 100),
    LeaderboardEntry('Jane Smith', 90),
    LeaderboardEntry('Alice Johnson', 80),
    LeaderboardEntry('Bob Brown', 70),
    LeaderboardEntry('Emma White', 60),
  ];

  // final int stepCount;

  // LeaderboardScreen({required this.stepCount});

  static const routeName = '/leaderboard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leaderboard'),
      ),
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/LeaderBoardBackground.png'), // Path to your image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Leaderboard List
          ListView.builder(
            itemCount: leaderboardEntries.length + 1, // Add 1 for the current user's step count
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                // Display the current user's step count as the first entry
                return ListTile(
                  leading: Text('Your Steps:'),
                  title: Text(stepCount.toString()),
                );
              } else {
                final entry = leaderboardEntries[index - 1]; // Adjust index to skip the current user's step count
                return ListTile(
                  leading: Text('${index}'), // Rank
                  title: Text(entry.name), // Player Name
                  trailing: Text('${entry.score}'), // Score
                );
              }
            },
          ),
        ],
      ),
    );
  }
}

class LeaderboardEntry {
  final String name;
  final int score;

  LeaderboardEntry(this.name, this.score);
}



// import 'package:flutter/material.dart';

// class LeaderboardScreen extends StatelessWidget {
//   final List<LeaderboardEntry> leaderboardEntries = [
//     LeaderboardEntry('John Doe', 100),
//     LeaderboardEntry('Jane Smith', 90),
//     LeaderboardEntry('Alice Johnson', 80),
//     LeaderboardEntry('Bob Brown', 70),
//     LeaderboardEntry('Emma White', 60),
//   ];

//   static const routeName = '/leaderboard';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Leaderboard'),
//       ),
//       body: Stack(
//         children: [
//           // Background Image
//           Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/LeaderBoardBackground.png'), // Path to your image
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           // Leaderboard List
//           ListView.builder(
//             itemCount: leaderboardEntries.length,
//             itemBuilder: (BuildContext context, int index) {
//               final entry = leaderboardEntries[index];
//               return ListTile(
//                 leading: Text('${index + 1}'), // Rank
//                 title: Text(entry.name), // Player Name
//                 trailing: Text('${entry.score}'), // Score
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

// class LeaderboardEntry {
//   final String name;
//   final int score;

//   LeaderboardEntry(this.name, this.score);
// }
