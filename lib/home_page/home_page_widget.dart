import 'package:drdp/home_dashboard/dashboard.dart';

import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
              child: Container(
                height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [
                Colors.blue,
                Colors.purple,
                Colors.pink,
              ],
              center: Alignment(0.6, 0.53),
              focal: Alignment(1.0, -0.9),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 60, 0, 60),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment(0, 0),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
                    child: Image.asset(
                      'assets/images/ff_logo.png',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(4, 0, 0, 20),
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFFE0E0E0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        alignment: Alignment(0, 0),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: TextFormField(
                            controller: emailTextController,
                            obscureText: false,
                            decoration: InputDecoration(
                              icon: Icon(Icons.mail_outline),
                              hintText: 'Email',
                              hintStyle: GoogleFonts.getFont(
                                'Roboto Mono',
                                color: Color(0xFF455A64),
                                fontWeight: FontWeight.normal,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                            ),
                            style: GoogleFonts.getFont(
                              'Roboto Mono',
                              color: Color(0xFF455A64),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(4, 0, 4, 20),
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFFE0E0E0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        alignment: Alignment(0, 0),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: TextFormField(
                            
                            controller: passwordTextController,
                            obscureText: true,
                            decoration: InputDecoration(
                              icon: Icon(Icons.fingerprint),
                              hintText: 'Password',
                              hintStyle: GoogleFonts.getFont(
                                'Roboto Mono',
                                color: Color(0xFF455A64),
                                fontWeight: FontWeight.normal,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                            ),
                            style: GoogleFonts.getFont(
                              'Roboto Mono',
                              color: Color(0xFF455A64),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Sign in',
                        options: FFButtonOptions(
                          width: 300,
                          height: 50,
                          color: Color(0xFF292C3B),
                          textStyle: GoogleFonts.getFont(
                            'Roboto Mono',
                            color: Color(0xFFDEDEDE),
                            fontSize: 16,
                          ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 0,
                          ),
                          borderRadius: 25,
                        ),
                      ),
                    ),
                    Text(
                      'Forgot password?',
                      style: GoogleFonts.getFont(
                        'Roboto Mono',
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 150,
                            height: 38,
                            child: Stack(
                              children: [
                                FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'g',
                                  options: FFButtonOptions(
                                    width: 300,
                                    height: 50,
                                    color: Color(0xFF292C3B),
                                    textStyle: GoogleFonts.getFont(
                                      'Open Sans',
                                      color: Colors.blueAccent,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w900
                                    ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 0,
                                    ),
                                    borderRadius: 25,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Container(
                              width: 150,
                              height: 38,
                              child: Stack(
                                children: [
                                  
                                  FFButtonWidget(
                                    onPressed: ()  => Navigator.push(context, MaterialPageRoute(builder: (context) => WalletDashBoard())),
                                    text: 'f',
                                    options: FFButtonOptions(
                                    width: 300,
                                    height: 50,
                                    color: Color(0xFF292C3B),
                                    textStyle: GoogleFonts.getFont(
                                      'Roboto Mono',
                                      color: Colors.blueAccent,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w900
                                    ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 0,
                                    ),
                                    borderRadius: 25,
                                  ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Text(
                            'Don\'t have an account?',
                            style: GoogleFonts.getFont(
                              'Roboto Mono',
                              color: Color(0xFFADADAD),
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Text(
                          'Sign Up',
                          style: GoogleFonts.getFont(
                            'Roboto Mono',
                            fontSize: 14,
                          ),
                        )
                      ],
                    )
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
