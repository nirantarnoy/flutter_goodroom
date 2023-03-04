import 'package:flutter/material.dart';
import 'package:flutter_wallet_ui/pages/mainpage.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final Map<String, dynamic> _formData = {
    'username': null,
    'password': null,
  };
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController usernameText = TextEditingController();
  final TextEditingController passwordText = TextEditingController();

  bool isChecked = false;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  void _submitForm(Function login) async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                  text: "My",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1, 1),
                        color: Colors.grey,
                        blurRadius: 8.0,
                      ),
                    ],
                  ),
                ),
                TextSpan(
                  text: " Room",
                  style: TextStyle(
                    color: Color.fromARGB(255, 172, 45, 123),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1, 1),
                        color: Colors.grey,
                        blurRadius: 8.0,
                      ),
                    ],
                  ),
                ),
              ])),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  buildUsernameField(),
                  const SizedBox(
                    height: 10,
                  ),
                  buildPasswordField(),
                  const SizedBox(
                    height: 20,
                  ),
                  builRememberMe(),
                ],
              )),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 84, 59, 199),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Material(
                child: InkWell(
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MainPage())),
                  // onTap: () {
                  //   shownoti();
                  // },
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    child: const Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                color: Colors.transparent,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Build version 0.1',
            style: TextStyle(color: Colors.grey.withOpacity(0.8)),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Release date 02-03-2023',
            style: TextStyle(color: Colors.grey.withOpacity(0.8)),
          ),
        ],
      ),
    );
  }

  Widget buildPasswordField() {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      alignment: Alignment.centerLeft,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: TextFormField(
            controller: passwordText,
            decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.black45,
                ),
                border: InputBorder.none,
                hintText: 'Password'),
            obscureText: true,
            validator: (String? value) {
              if (value!.isEmpty || value.length < 1) {
                return ("กรุณากรอกรหัสผ่าน");
              }
            },
            onSaved: (String? value) {
              _formData['password'] = value;
            }),
      ),
    );
  }

  Widget buildUsernameField() {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      alignment: Alignment.centerLeft,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.person,
                color: Colors.black45,
              ),
              border: InputBorder.none,
              hintText: 'Username'),
          controller: usernameText,
          validator: (String? value) {
            if (value!.isEmpty || value.length < 1) {
              return 'กรุณากรอกชื่อผู้ใช้';
            }
          },
          onSaved: (String? value) {
            _formData['username'] = value;
          },
        ),
      ),
    );
  }

  Widget builRememberMe() {
    return Row(
      children: <Widget>[
        Expanded(
            flex: 1,
            child: Checkbox(
              value: isChecked,
              onChanged: (value) {
                isChecked = !isChecked;
                setState(() {});
              },
            )),
        Expanded(flex: 4, child: Text("จดจำเพื่อเข้าระบบครั้งต่อไป")),
      ],
    );
  }
}
