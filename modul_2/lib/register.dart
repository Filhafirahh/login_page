import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _usernameController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Shrine'),
          leading: Image.asset('assets/diamond.png'),
          backgroundColor: const Color.fromARGB(255, 166, 199, 255),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 50.0),
                    Center(
                      child: Image.asset('assets/diamond.png'),
                    ),
                    const Text(
                      'Registrasi',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    const Text(
                        'Lorem Ipsum dolar sit amet, consectetur adipiscing elit'),
                    const SizedBox(height: 50.0),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Masukan data username',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 10.0),
                    TextField(
                      controller: _usernameController,
                      decoration: const InputDecoration(
                        filled: true,
                        labelText: 'Username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),

                    const SizedBox(height: 12.0),
                    // [Password]
                    const Text(
                      'Masukan data password',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 10.0),

                    TextField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        filled: true,
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(height: 12.0),
                    const Text(
                      'Masukan ulang data password',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 10.0),

                    TextField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        filled: true,
                        labelText: 'Re-Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                      obscureText: true,
                    ),
                  ],
                ),
                const SizedBox(height: 12.0),
                OverflowBar(
                  alignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (() {}), child: Text('Cencel')),
                    ElevatedButton(
                        onPressed: (() {
                          Navigator.pop(context);
                        }),
                        child: Text('Register'))
                  ],
                ),
                const SizedBox(height: 150.0),
                OverflowBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    const Text('Sudah Punya Akun?'),
                    TextButton(
                        onPressed: (() {
                          Navigator.pushNamed(context, '/login');
                        }),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
