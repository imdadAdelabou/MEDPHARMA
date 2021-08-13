import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medpharma/widgets/ButtonConnect.dart';
import 'package:medpharma/widgets/footer_component.dart';
import 'package:medpharma/widgets/form_field_name.dart';
import 'package:medpharma/widgets/form_field_phone.dart';
import 'package:medpharma/widgets/title_medpharma.dart';

class Register extends StatefulWidget {
  static String name = "/register";
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String _phoneNumber = "";
  String _surname = "";
  String _name = "";
  final _keyg = GlobalKey<FormState>();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      body: SingleChildScrollView(
        child: Form(
          key: _keyg,
          child: Column(children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 15.0,
                  top: 50.0,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.chevron_left,
                    size: 40.0,
                  ),
                ),
              ),
            ),
            Center(
              child: Image.asset(
                "assets/images/icone.png",
                scale: 1.3,
              ),
            ),
            Center(
              child: TitleMedPharma(),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 20.0,
              ),
              child: NameTextFormField(
                hint: "Nom",
                onChange: (String value) {
                  setState(() {
                    _surname = value;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20.0,
                left: 20.0,
                right: 20.0,
                bottom: 20.0,
              ),
              child: NameTextFormField(
                hint: "Prénom(s)",
                onChange: (String value) {
                  setState(() {
                    _name = value;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                bottom: 30.0,
              ),
              child: FormFieldPhone(
                hint: "Numéro de Téléphone",
                onChange: (String value) {
                  setState(() {
                    _phoneNumber = value;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                bottom: 50.0,
              ),
              child: ButtonConnect(
                content: !isLoading
                    ? Text(
                        "Suivant",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                        ),
                      )
                    : CircularProgressIndicator(),
                function: () {
                  print("okay");
                },
              ),
            ),
            FooterComponent(),
          ]),
        ),
      ),
    );
  }
}
