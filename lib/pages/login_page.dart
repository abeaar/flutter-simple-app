import 'package:flutter/material.dart';
import 'package:latihankuis/pages/dashboard_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _username = TextEditingController();
  final _alias = TextEditingController();
  final _password = TextEditingController();
  final formkey = GlobalKey<FormState>();
  bool _isLogin = false;
  bool _isObscure = true;

  void dispose() {
    _username.dispose();
    _alias.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Form(
        key: formkey,
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: SizedBox(
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'kosong bang';
                    }
                    return null;
                  },
                  controller: _username,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  controller: _alias,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Alias",
                  ),
                ),
                TextFormField(
                  obscureText: _isObscure,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'kosong bang';
                    }
                    return null;
                  },
                  controller: _password,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: "Password",
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        if (_username.text.trim() == "abraar" &&
                            _password.text.trim() == '12345') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Berhasil Login'),
                            ),
                          );
                          setState(() {
                            _isLogin = true;
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return DashboardPage(
                                alias: _alias.text, // Alias bisa kosong
                                username: _username.text,
                              );
                            }),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                _username.text.trim() != "a"
                                    ? 'Akun tidak ditemukan'
                                    : 'Password salah',
                              ),
                            ),
                          );
                        }
                      }
                    },
                    child: const Text('Login'),
                  ),
                ),
                if (_isLogin) Text('Berhasil Login')
              ],
            ),
          ),
        )),
      ),
    ));
  }
}
