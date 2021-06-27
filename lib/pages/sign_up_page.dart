import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobby/pages/home/main_page.dart';
import 'package:jobby/pages/sign_in_page.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        padding: EdgeInsets.only(left: 35, right: 30),
        margin: EdgeInsets.only(bottom: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 90,
              ),
              Text(
                "Welcome! \nPlease sign up now",
                style: GoogleFonts.mulish(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                style: GoogleFonts.mulish(fontSize: 16),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                      color: Color(0xFFE5E5E5),
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.account_circle,
                    size: 22,
                    color: Color(0xFFA6A7AF),
                  ),
                  hintText: "Fullname",
                  hintStyle: GoogleFonts.mulish(
                    color: Color(0xFF98999F),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                      color: Color(0xFF5284E3),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                style: GoogleFonts.mulish(fontSize: 16),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                      color: Color(0xFFE5E5E5),
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    size: 22,
                    color: Color(0xFFA6A7AF),
                  ),
                  hintText: "Email Address",
                  hintStyle: GoogleFonts.mulish(
                    color: Color(0xFF98999F),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                      color: Color(0xFF5284E3),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                style: GoogleFonts.mulish(fontSize: 16),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                      color: Color(0xFFE5E5E5),
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 22,
                    color: Color(0xFFA6A7AF),
                  ),
                  hintText: "Password",
                  hintStyle: GoogleFonts.mulish(
                    color: Color(0xFF98999F),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                      color: Color(0xFF5284E3),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 54,
                      child: TextButton(
                        child: Text(
                          "Register",
                          style: GoogleFonts.mulish(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainPage(),
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFF5284E3),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "or continue with",
                      style: GoogleFonts.mulish(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: double.infinity,
                      height: 54,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFE5E5E5),
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFFFCFCFD),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/google_logo.png",
                              width: 20,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              "Google Account",
                              style: GoogleFonts.mulish(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 124,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account ? ",
                          style: GoogleFonts.mulish(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignInPage(),
                              ),
                            );
                          },
                          child: Text(
                            "Sign In",
                            style: GoogleFonts.mulish(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF5284E3),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
