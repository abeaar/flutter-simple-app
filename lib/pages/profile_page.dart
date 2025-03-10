import 'package:flutter/material.dart';
import 'package:latihankuis/pages/login_page.dart'; // Ensure this import is correct

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
    required this.nama,
    required this.nim,
    required this.kerja,
    required this.organisasi,
    required this.hardskill,
    required this.softskill,
    required this.pencapaian,
  });
  final String nama;
  final String nim;
  final String kerja;
  final String organisasi;
  final String hardskill;
  final String softskill;
  final String pencapaian;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/test.JPG'),
                  radius: 50.0,
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Nama',
                    border: OutlineInputBorder(),
                  ),
                  controller: TextEditingController(text: nama),
                  readOnly: true,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'NIM',
                    border: OutlineInputBorder(),
                  ),
                  controller: TextEditingController(text: nim),
                  readOnly: true,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Pekerjaan',
                    border: OutlineInputBorder(),
                  ),
                  controller: TextEditingController(text: kerja),
                  readOnly: true,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Organisasi',
                    border: OutlineInputBorder(),
                  ),
                  controller: TextEditingController(text: organisasi),
                  readOnly: true,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Hardskill',
                    border: OutlineInputBorder(),
                  ),
                  controller: TextEditingController(text: hardskill),
                  readOnly: true,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Softskill',
                    border: OutlineInputBorder(),
                  ),
                  controller: TextEditingController(text: softskill),
                  readOnly: true,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Pancapian',
                    border: OutlineInputBorder(),
                  ),
                  controller: TextEditingController(text: pencapaian),
                  readOnly: true,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                      (route) => false,
                    );
                  },
                  child: Text('Logout'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
