class FirstPageLog extends StatelessWidget {
  // "Para maka retrieve sa data nga gi input"
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignment Mobile Programming"),
        backgroundColor: Colors.orange,
        leading: Icon(Icons.code),
      ),
      body: Form(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            // "sa email nga part"
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email Address",
              ),
            ),
            // "password part"
            TextFormField(
              controller: passwordController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // "kung e press controller will proc"
                String email = emailController.text;
                String password = passwordController.text;
                print("Email: $email, Password: $password");
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
