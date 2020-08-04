import 'package:flutter/material.dart';
import 'package:widgettest/shared/constants.dart';

class LoginIn extends StatefulWidget {
  @override
  _LoginInState createState() => _LoginInState();
}

class _LoginInState extends State<LoginIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  login_Gradient1,
                  login_Gradient2,
                  login_Gradient3,
                  login_Gradient4,
                ],
              ),
            ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 120.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "로그인",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  buildEmailTextField(),
                  SizedBox(
                    height: 30.0,
                  ),
                  buildPWTextField(),
                  buildForgetPW(),
                  buildLoginBtn(),
                  buildTextForm(),
                  SizedBox(
                    height: 30.0,
                  ),
                  buildSocialBtn(),
                  SizedBox(
                    height: 50.0,
                  ),
                  buildSignUpText()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSignUpText() {
    return GestureDetector(
                  //onTap: (){print("당신은 회원가입을 눌렀습니다");},
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '계정이 없으신가요? ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: '회원가입',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
  }
  Row buildSocialBtn() {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 6.0,
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage('assets/facebook.jpg'),
                        ),
                      ),
                    ),

                    Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 6.0,
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage('assets/kakao-talk.png'),
                        ),
                      ),
                    ),
                  ],
                );
  }
  Widget buildTextForm() {
    return Column(
                  children: <Widget>[
                    Text(
                      '- OR -',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Sign in with',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                );
  }
  Widget buildLoginBtn() {
    return Container(
                  padding: EdgeInsets.symmetric(vertical: 25.0),
                  width: double.infinity,
                  child: RaisedButton(
                    elevation: 5.0,
                    onPressed: (){print("press login btn");},
                    padding: EdgeInsets.all(15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    color: Colors.white,
                    child: Text(
                      "로그인",
                      style: TextStyle(
                        color: btnTextColor,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                );
  }
  Widget buildForgetPW() {
    return Container(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: (){ print("당신은 비밀번호 잃어버린 버튼을 눌렀습니다");},
                    padding: EdgeInsets.only(right: 0.0),
                    child: Text(
                      '비밀번호를 잃어버리셨나요?',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
  }
  Widget buildPWTextField() {
    return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "비밀번호",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.0,),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: loginBoxDeco,
                      height: 60.0,
                      child: TextField(
                        obscureText: true,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 14.0),
                          prefixIcon: Icon(Icons.vpn_key, color: Colors.white,),
                          hintText: '여기에 비밀번호를 입력해주세요',
                          hintStyle: TextStyle(
                            color: Colors.white54,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
  }
  Widget buildEmailTextField() {
    return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "이메일",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.0,),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: loginBoxDeco,
                      height: 60.0,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 14.0),
                          prefixIcon: Icon(Icons.email, color: Colors.white,),
                          hintText: '여기에 이메일을 입력해주세요',
                          hintStyle: TextStyle(
                            color: Colors.white54,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
  }
}
