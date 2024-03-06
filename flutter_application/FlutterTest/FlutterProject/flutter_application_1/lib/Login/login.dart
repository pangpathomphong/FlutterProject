import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // Add form key

  void _submitForm() {

    if (_formKey.currentState!.validate()) {

      // Validate the form
      // Handle form submission here
      String email = emailController.text;
      String password = passwordController.text;

      // Perform any necessary actions with email and password
      print("Email: $email, Password: $password");

      // Reset text fields after submission
      emailController.clear();
      passwordController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(),
          child: Form(
            key: _formKey, // Set the key for the form
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 60),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 91, 166),
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Welcome",
                        style: TextStyle(
                          color: Color.fromARGB(255, 67, 66, 66),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 0, 91, 166),
                              blurRadius: 3,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color.fromARGB(255, 148, 147, 147),
                                  ),
                                ),
                              ),
                              child: TextFormField(
                                controller: emailController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your email';
                                  }
                                  // You can add more validation logic here if needed
                                  return null;
                                },
                                decoration: InputDecoration(
                                  hintText: "Email or Phone number",
                                  hintStyle: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 0, 91, 166),
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: const Color.fromARGB(
                                        255, 148, 147, 147),
                                  ),
                                ),
                              ),
                              child: TextFormField(
                                controller: passwordController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your password';
                                  }
                                  // You can add more validation logic here if needed
                                  return null;
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 0, 91, 166),
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {
                          // Handle forgot password action
                        },
                        child: Text(
                          "Forgot password?",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          // Handle login with Google action
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/google.png', // Provide your image path here
                              height: 20,
                              width: 20,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Login with Google Account",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      GestureDetector(
                        onTap: _submitForm,
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 70),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 84, 169, 238),
                          ),
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Stack(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              hintText:
                                  "Don't have any account : create account",
                              hintStyle: TextStyle(
                                color: Colors.black,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                          Positioned(
                            left: 2,
                            right: 5,
                            child: Container(
                              height: 1,
                              color: const Color.fromARGB(255, 148, 147, 147),
                            ),
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
      ),
    );
  }
}
