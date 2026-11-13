import 'package:flutter/material.dart';

class StudentDashboard extends StatelessWidget {
  const StudentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Dashboard"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              print("Logout clicked");
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/gwapo.jpg"),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Neo Ryle T. Tubera",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text("ID: 535502"),
                    const Text("BS Information Technology - 3rd Year"),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Card(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text("neo.tubera@university.edu"),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("0945403100"),
                ),
                ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text("Royal Valley Bangkal, Davao City"),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Subjects",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: const ListTile(
              title: Text("Mobile Applications Development"),
              subtitle: Text("Instructor: Prof. Smith\nSchedule: Mon/Wed 9:00-10:30"),
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: const ListTile(
              title: Text("Data Structures and Algorithms"),
              subtitle: Text("Instructor: Prof. Johnson\nSchedule: Tue/Thu 11:00-12:30"),
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: const ListTile(
              title: Text("Database Management Systems"),
              subtitle: Text("Instructor: Prof. Williams\nSchedule: Fri 14:00-16:00"),
            ),
          ),
          const SizedBox(height: 80),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Add Subject Clicked!");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
