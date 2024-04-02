import 'package:flutter/material.dart';

//rasha mansour
void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Rasha Login Page',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              fontFamily: 'Arial', // Change to your desired font
            ),
          ),
          centerTitle: true, // Center the title
          backgroundColor:
              Color.fromARGB(255, 201, 126, 155), // Set background color here
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.person), // Add user icon
            ),
          ],
        ),
        body: LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Login', // Add login label
            style: TextStyle(
              fontSize: 24.0, // Increase font size
              fontWeight: FontWeight.bold, // Make it bold
              color: Colors.blue, // Change color
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), // Make rounded corners
              border: Border.all(color: Colors.black), // Add border
            ),
            child: TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                prefixIcon: Icon(Icons.person),
                border: InputBorder.none, // Remove default border
                contentPadding: EdgeInsets.all(10.0), // Add padding
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), // Make rounded corners
              border: Border.all(color: Colors.black), // Add border
            ),
            child: TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: _obscureText
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
                border: InputBorder.none, // Remove default border
                contentPadding: EdgeInsets.all(10.0), // Add padding
              ),
              obscureText: _obscureText,
              maxLength: 20, // Limit the password to 20 characters
            ),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              _printCredentials();
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }

  void _printCredentials() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    print('Username: $username');
    print('Password: $password');
  }
}
