import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  Widget build(BuildContext context) {
    Widget title = Container(
      margin: const EdgeInsets.fromLTRB(0, 123, 0, 0),
      child: Image.asset(
        'images/nabi.png',
        width: 51,
        height: 14,
        fit: BoxFit.cover,
      ),
    );

    Widget title2 = Container(
      margin: const EdgeInsets.fromLTRB(0, 14, 0, 0),
      alignment: const FractionalOffset(0.5, 0.23),
      child: Text(
        '나의 유방암 연구 비서',
        style: TextStyle(
          color: Color.fromARGB(0xFF, 0x46, 0x46, 0x67),
          fontSize: 14,
          fontFamily: 'Spoqa Han San',
        ),
      ),
    );

    Widget kakaoBtn = Container(
      margin: const EdgeInsets.only(top: 108),
      child: SizedBox(
        width: 300,
        height: 54,
        child: OutlineButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          borderSide: BorderSide(
            color: Color.fromARGB(0xFF, 0xD2, 0xD7, 0xE1),
            style: BorderStyle.solid,
          ),
          padding: const EdgeInsets.only(left: 27, top: 13, bottom: 13),
          child: Row(
            children: [
              Container(
                child: Image.asset(
                  'images/kakao.png',
                  width: 28,
                  height: 28,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 32),
                child: Text(
                  '카카오톡으로 시작하기',
                  style: TextStyle(
                    color: Color.fromARGB(0xFF, 0x46, 0x46, 0x67),
                    fontSize: 13,
                    fontFamily: 'Nanum Gothic',
                  ),
                ),
              ),
            ],
          ),
          onPressed: () {},
          color: Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF),
        ),
      ),
    );

    Widget naverBtn = Container(
      margin: const EdgeInsets.only(top: 20),
      child: SizedBox(
        width: 300,
        height: 54,
        child: OutlineButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          borderSide: BorderSide(
            color: Color.fromARGB(0xFF, 0xD2, 0xD7, 0xE1),
            style: BorderStyle.solid,
          ),
          padding: const EdgeInsets.only(left: 27, top: 13, bottom: 13),
          child: Row(
            children: [
              Container(
                child: Image.asset(
                  'images/naver.png',
                  width: 28,
                  height: 28,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 32),
                child: Text(
                  '네이버로 시작하기',
                  style: TextStyle(
                    color: Color.fromARGB(0xFF, 0x46, 0x46, 0x67),
                    fontSize: 13,
                    fontFamily: 'Nanum Gothic',
                  ),
                ),
              ),
            ],
          ),
          onPressed: () {},
          color: Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF),
        ),
      ),
    );

    Widget mailBtn = Container(
      margin: const EdgeInsets.only(top: 20),
      child: SizedBox(
        width: 300,
        height: 54,
        child: OutlineButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          borderSide: BorderSide(
            color: Color.fromARGB(0xFF, 0xD2, 0xD7, 0xE1),
            style: BorderStyle.solid,
          ),
          padding: const EdgeInsets.only(left: 27, top: 13, bottom: 13),
          child: Row(
            children: [
              Container(
                child: Image.asset(
                  'images/mail.png',
                  width: 23,
                  height: 18,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 32),
                child: Text(
                  '이메일로 로그인',
                  style: TextStyle(
                    color: Color.fromARGB(0xFF, 0x46, 0x46, 0x67),
                    fontSize: 13,
                    fontFamily: 'Nanum Gothic',
                  ),
                ),
              ),
            ],
          ),
          onPressed: () {},
          color: Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF),
        ),
      ),
    );

    Widget dottedLine = Container(
        margin: const EdgeInsets.only(top: 21),
        child: Text('ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ',
            style: TextStyle(
              color: Color.fromARGB(0xFF, 0xD2, 0xD7, 0xE1),
            )));

    Widget signUpBtn = Container(
      margin: const EdgeInsets.only(top: 19),
      child: SizedBox(
        width: 300,
        height: 54,
        child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Container(
            child: Text(
              '이메일로 가입하기',
              style: TextStyle(
                color: Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF),
                fontSize: 14,
                fontFamily: 'Nanum Gothic bold',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/serviceAgr');
          },
          color: Color.fromARGB(0xFF, 0xFF, 0x8D, 0x88),
        ),
      ),
    );

    return Scaffold(
      body: Container(
        color: Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF),
        child: Column(
          children: [
            title,
            title2,
            kakaoBtn,
            naverBtn,
            mailBtn,
            dottedLine,
            signUpBtn
          ],
        ),
      ),
    );
  }
}
