import 'package:flutter/material.dart';
import 'package:latihankuis/components/save_button.dart';
import 'package:latihankuis/pages/profile_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key, required this.username, this.alias});
  final String username;
  final String? alias;

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final TextEditingController _namaControler = TextEditingController();
  final TextEditingController _nimControler = TextEditingController();
  final TextEditingController _kerjaControler = TextEditingController();
  final TextEditingController _organisasiControler = TextEditingController();
  final TextEditingController _hardskillControler = TextEditingController();
  final TextEditingController _softskillControler = TextEditingController();
  final TextEditingController _pencapaianControler = TextEditingController();

  void _saveData() {
    String nama = _namaControler.text;
    String nim = _nimControler.text;
    String kerja = _kerjaControler.text;
    String organisasi = _organisasiControler.text;
    String hardskill = _hardskillControler.text;
    String softskill = _softskillControler.text;
    String pencapaian = _pencapaianControler.text;

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ProfilePage(
          nama: nama,
          nim: nim,
          kerja: kerja,
          organisasi: organisasi,
          hardskill: hardskill,
          softskill: softskill,
          pencapaian: pencapaian);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Selamat datang, ${widget.alias?.isNotEmpty == true ? widget.alias : widget.username}!',
        ),
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(26.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  controller: _namaControler,
                  decoration: InputDecoration(
                    labelText: 'Nama',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  controller: _nimControler,
                  decoration: InputDecoration(
                    labelText: 'nim',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  controller: _kerjaControler,
                  decoration: InputDecoration(
                    labelText: 'kerja',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  controller: _organisasiControler,
                  decoration: InputDecoration(
                    labelText: 'organisasi',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  controller: _hardskillControler,
                  decoration: InputDecoration(
                    labelText: 'hardskill',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  controller: _softskillControler,
                  decoration: InputDecoration(
                    labelText: 'softskill',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  controller: _pencapaianControler,
                  decoration: InputDecoration(
                    labelText: 'pencapaian',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                SaveButton(onPressed: () {
                  _saveData();
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return ProfilePage(
                      nama: _namaControler.text,
                      nim: _nimControler.text,
                      kerja: _kerjaControler.text,
                      organisasi: _organisasiControler.text,
                      hardskill: _hardskillControler.text,
                      softskill: _softskillControler.text,
                      pencapaian: _pencapaianControler.text,
                    );
                  }));
                }),
              ],
            )),
      ),
    ));
  }
}
