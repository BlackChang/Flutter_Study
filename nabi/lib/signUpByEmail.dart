import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SignUpByEmail extends StatelessWidget {
  Widget build(BuildContext context) {
    return SignUp();
  }
}

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController mailController = new TextEditingController();
  TextEditingController pwController = new TextEditingController();

  FocusNode nameNode = new FocusNode();
  FocusNode mailNode = new FocusNode();
  FocusNode pwNode = new FocusNode();

  bool isNameSubmitted = false;
  bool isMailSubmitted = false;
  bool isPWSubmitted = false;
  
  bool isNameValid = false;
  bool isMailValid = false;
  bool isPWValid = false;
  
  bool next = false;

  String _name = '';
  String _mail = '';
  String _pw = '';

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace,
            color: Color.fromARGB(0xFF, 0xFC, 0x75, 0x69),
            size: 24,
          ),
          onPressed: () {
            FocusScope.of(context).requestFocus(FocusNode());
            Navigator.pop(context);
          },
        ),
        title: Text(
          '이메일로 가입하기',
          style: TextStyle(
            fontSize: 15,
            fontFamily: 'Nanum Gothic',
            letterSpacing: 0.09,
            color: Color.fromARGB(0xFF, 0x33, 0x33, 0x33),
          ),
        ),
        titleSpacing: 0.09,
        centerTitle: true,
        backgroundColor: Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
          alignment: Alignment.centerLeft,
          width: double.infinity,
          margin: const EdgeInsets.only(top: 25, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '이름',
                style: TextStyle(
                  fontSize: 11,
                  fontFamily: 'Nanum Gothic',
                  letterSpacing: 0.92,
                  color: Color.fromARGB(0xFF, 0xBE, 0xBE, 0xBE),
                ),
                textAlign: TextAlign.start,
              ),
              TextField(
                style: TextStyle(
                  color: Color.fromARGB(0xFF, 0x26, 0x26, 0x28),
                  fontSize: 16,
                  fontFamily: 'Nanum Gothic',
                  letterSpacing: 0,
                ),
                onChanged: (name) {
                  _name = name;
                  _nameSubmitted(name);
                  _next();
                },
                onSubmitted: (name) {
                  _name = name;
                  _nameSubmitted(name);
                  _next();
                  FocusScope.of(context).requestFocus(nameNode);
                },
                cursorColor: Color.fromARGB(0xFF, 0xFC, 0x75, 0x69),
                controller: nameController,
                maxLines: 1,
                maxLength: 20,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    width: 2,
                    color: Color.fromARGB(0xFF, 0xFC, 0x75, 0x69),
                  )),
                ),
              ),
            ],
          ),
        ),
          Container(
          alignment: Alignment.centerLeft,
          width: double.infinity,
          margin: const EdgeInsets.only(top: 15, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '이메일 주소',
                style: TextStyle(
                  fontSize: 11,
                  fontFamily: 'Nanum Gothic',
                  letterSpacing: 0.92,
                  color: Color.fromARGB(0xFF, 0xBE, 0xBE, 0xBE),
                ),
              ),
              TextField(
                style: TextStyle(
                  color: Color.fromARGB(0xFF, 0x26, 0x26, 0x28),
                  fontSize: 16,
                  fontFamily: 'Nanum Gothic',
                  letterSpacing: 0,
                ),
                onChanged: (mail) {
                  _mail = mail;
                  _mailSubmitted(mail);
                  _next();
                },
                onSubmitted: (mail) {
                  _mail = mail;
                  _mailSubmitted(mail);
                  _next();
                  FocusScope.of(context).requestFocus(mailNode);
                },
                keyboardType: TextInputType.emailAddress,
                cursorColor: Color.fromARGB(0xFF, 0xFC, 0x75, 0x69),
                controller: mailController,
                maxLines: 1,
                maxLength: 30,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    width: 2,
                    color: Color.fromARGB(0xFF, 0xFC, 0x75, 0x69),
                  )),
                ),
              ),
            ],
          ),
        ),
          Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 15, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '비밀번호',
                style: TextStyle(
                  fontSize: 11,
                  fontFamily: 'Nanum Gothic',
                  letterSpacing: 0.92,
                  color: Color.fromARGB(0xFF, 0xBE, 0xBE, 0xBE),
                ),
                textAlign: TextAlign.start,
              ),
              TextField(
                style: TextStyle(
                  color: Color.fromARGB(0xFF, 0x26, 0x26, 0x28),
                  fontSize: 16,
                  fontFamily: 'Nanum Gothic',
                  letterSpacing: 0,
                ),
                onChanged: (pw) {
                  _pw = pw;
                  _pwSubmitted(pw);
                  _next();
                },
                onSubmitted: (pw) {
                  _pw = getPW();
                  setPW(pw);
                  _pwSubmitted(pw);
                  _next();
                  FocusScope.of(context).requestFocus(pwNode);
                },
                obscureText: true,
                cursorColor: Color.fromARGB(0xFF, 0xFC, 0x75, 0x69),
                controller: pwController,
                maxLines: 1,
                maxLength: 20,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    width: 2,
                    color: Color.fromARGB(0xFF, 0xFC, 0x75, 0x69),
                  )),
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
        ],
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 50,
        child: FlatButton(
          child: Text(
            '이메일로 가입하기',
          ),
          color: next ? Color.fromARGB(0xFF, 0xFC, 0x75, 0x69) : Color.fromARGB(0xFF, 0xBE, 0xBE, 0xBE),
          textColor: Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF),
          onPressed: () {            
            FocusScope.of(context).requestFocus(FocusNode());
            Navigator.pop(context);
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  String getName() {
    return _name;
  }

  String getMail() {
    return _mail;
  }

  String getPW() {
    return _pw;
  }

  void setName(String name) {
    setState(() {
      _name = name;
    });
  }

  void setMail(String mail) {
    setState(() {
      _mail = mail;
    });
  }

  void setPW(String pw) {
    setState(() {
      _pw = pw;
    });
  }

  void _nameSubmitted(String name) {
    _nameValid(name);
    setState(() {
      if(isNameValid){
        isNameSubmitted = true;
      }
      else{
        isNameSubmitted = false;
      }
    });
  }

  void _mailSubmitted(String mail) {
    _mailValid(mail);
    setState(() {
      if(isMailValid){
        isMailSubmitted = true;
      }
      else{
        isMailSubmitted = false;
      }
    });
  }

  void _pwSubmitted(String pw) {
    _pwValid(pw);
    setState(() {
      if(isPWValid){
        isPWSubmitted = true;
      }
      else{
        isPWSubmitted = false;
      }
    });
  }

  void _nameValid(String name){
    setState((){
      if(name.length > 6)
        isNameValid = true;
      else
        isNameValid = false;
    });
  }

  void _mailValid(String mail){
    setState((){
      if(mail.length > 10){
        isMailValid = true;
      }
      else {
        isMailValid = false;
      }
    });
  }

  void _pwValid(String pw){
    setState((){
      if(pw.length > 10){
        isPWValid = true;
      }
      else {
        isPWValid = false;
      }
    });
  }

  void _next(){
    setState((){
      if(isNameSubmitted & isMailSubmitted & isPWSubmitted){
        next = true;
      }
      else{
        next = false;
      }
    });
  }
}