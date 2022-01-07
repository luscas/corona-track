import 'package:flutter/material.dart';
import 'package:coronatrack/colors.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 80),
                      child: Center(
                        child: Image.asset('assets/img/logo.png'),
                      )
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(height: 71),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(fontSize: 16),
                          decoration: InputDecoration(
                            labelText: 'E-mail',
                            contentPadding: EdgeInsets.all(17.0),
                            enabledBorder: new OutlineInputBorder(
                              borderSide: new BorderSide(width: 1.5, color: CustomColor.gray500)
                            ),
                            focusedBorder: new OutlineInputBorder(
                              borderSide: new BorderSide(width: 2, color: CustomColor.primary)
                            ),
                            border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: CustomColor.gray500)
                            ),
                          ),
                        ),
                        SizedBox(height: 16),

                        TextField(
                          style: TextStyle(fontSize: 16),
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Senha',
                            suffixIcon: Padding(
                              padding: EdgeInsets.only(right: 16),
                              child: Icon(Icons.visibility_off)
                            ),
                            contentPadding: EdgeInsets.all(17.0),
                            enabledBorder: new OutlineInputBorder(
                              borderSide: new BorderSide(width: 1.5, color: CustomColor.gray500)
                            ),
                            focusedBorder: new OutlineInputBorder(
                              borderSide: new BorderSide(width: 2, color: CustomColor.primary)
                            ),
                            border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: CustomColor.gray500)
                            ),
                          ),
                        ),

                        SizedBox(height: 16),
                        RawMaterialButton(
                          onPressed: () {},
                          fillColor: CustomColor.primary,
                          splashColor: CustomColor.primary,
                          elevation: 0.0,
                          highlightElevation: 0.0,
                          padding: EdgeInsets.all(17.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(100.0),
                          ),
                          child: Text(
                            'ENTRAR',
                            style: TextStyle(
                              fontFamily: 'Dosis',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            )
                          ),
                        ),
                        SizedBox(height: 40.0),

                        Stack(
                          children: [
                            Divider(
                              color: CustomColor.gray600,
                            ),
                            Center(
                              child: Container(
                                width: 39.25,
                                color: Colors.white,
                                child: Text(
                                  'OU',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: CustomColor.gray600),
                                ),
                              ),
                            )
                          ]
                        ),
                        SizedBox(height: 32.5),

                        RawMaterialButton(
                          onPressed: () {},
                          splashColor: Colors.transparent,
                          highlightColor: Color(0xFF235DE3).withOpacity(0.1),
                          elevation: 0.0,
                          highlightElevation: 0.0,
                          padding: EdgeInsets.all(17.0),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1.5, color: Color(0xFF235DE3)),
                            borderRadius: new BorderRadius.circular(100.0),
                          ),
                          child: Text(
                            'Entrar com Facebook',
                            style: TextStyle(
                              fontFamily: 'Dosis',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF235DE3)
                            )
                          ),
                        ),
                        SizedBox(height: 16.0),

                        RawMaterialButton(
                          onPressed: () {},
                          splashColor: Colors.transparent,
                          highlightColor: CustomColor.primary.withOpacity(0.1),
                          elevation: 0.0,
                          highlightElevation: 0.0,
                          padding: EdgeInsets.all(17.0),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1.5, color: CustomColor.primary),
                            borderRadius: new BorderRadius.circular(100.0),
                          ),
                          child: Text(
                            'CADASTRE-SE',
                            style: TextStyle(
                              fontFamily: 'Dosis',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: CustomColor.primary,
                            )
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
      )
    );
  }
}
