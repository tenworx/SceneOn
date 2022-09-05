import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreateEvent extends StatelessWidget {
  const CreateEvent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? localimage;
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.2),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Material(
                elevation: 15,
                child: Image.asset(
                  'assets/images/image.jpg',
                  height: 200,
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Container(
                child: Material(
                  elevation: 15.0,
                  shadowColor: Colors.black,
                  borderRadius: BorderRadius.circular(15.0),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0, left: 15.0),
                    child: TextFormField(
                        obscureText: true,
                        autofocus: false,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.lock,
                            color: Colors.black,
                            size: 32.0, /*Color(0xff224597)*/
                          ),
                          labelText: "Confirm password",
                          labelStyle:
                              TextStyle(color: Colors.black54, fontSize: 18.0),
                          hintText: '',
                          enabledBorder: InputBorder.none,
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black54),
                          ),
                          border: InputBorder.none,
                        ),
                        validator: (val) {
                          if (val!.isEmpty) return 'confirmer Mot de passe!!';
                          // if (val != _pass.text)
                          return 'Mot de passe incorrect';
                          // return null;
                        }),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
