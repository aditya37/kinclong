import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FormRegisterWidget extends StatelessWidget {
  const FormRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 21,
        right: 28,
        top: 2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            enableSuggestions: false,
            decoration: InputDecoration(
              hintText: "Nama Lengkap",
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              label: Text("Nama Lengkap"),
              filled: false,
              suffixIcon: Icon(Icons.person),
            ),
          ),
          Gap(25),
          TextField(
            enableSuggestions: false,
            decoration: InputDecoration(
              hintText: "Username",
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              label: Text("Username"),
              filled: false,
              suffixIcon: Icon(Icons.person),
            ),
          ),
          Gap(25),
          TextField(
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: InputDecoration(
              hintText: "Password",
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              label: Text("Password"),
              filled: false,
              suffixIcon: Icon(Icons.lock),
            ),
          ),
          Gap(25),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "E-mail",
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              label: Text("E-mail"),
              filled: false,
              suffixIcon: Icon(Icons.mail),
            ),
          ),
          Gap(25),
          TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              hintText: "Password",
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              label: Text("Nomor Telepon"),
              filled: false,
              suffixIcon: Icon(Icons.phone_android),
            ),
          ),
        ],
      ),
    );
  }
}
