import 'dart:io';

import 'package:flutter/material.dart';
import 'package:local_auth/auth_strings.dart';
import 'package:local_auth/local_auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: HomePage()
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final LocalAuthentication auth = LocalAuthentication();
  @override
  Widget build(BuildContext context) {
    setState(() {
      _biometrico();
          });
          return Container(
            
          );
        }
      
        Future <void> _biometrico() async {
          bool flag = true;

          if (flag) {
            bool authenticated = false;
            const androidString = const AndroidAuthMessages(
            cancelButton : 'Cancelar',
            goToSettingsButton: 'Ajustes',
            signInTitle: 'Autentiquese',
            fingerprintHint: 'Toque el sensor.',
            fingerprintNotRecognized: 'Huella no reconocida',
            fingerprintSuccess: 'Huella reconocida',
            goToSettingsDescription: 'Por favor, configure su huella'
            );

            try {
              authenticated = await auth.authenticateWithBiometrics(
                localizedReason: 'Autentiquese para acceder.',
                useErrorDialogs: true,
                stickyAuth: true,
                androidAuthStrings: androidString);

                if (!authenticated) {
                  exit(0);
                } else {
                }

            } catch (e) {
              print(e);
            }
            if (!mounted) {
              return;
            } else {
            }
          }
        }
}