import 'package:flutter/material.dart';

class ServiceAgr extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          FlatButton(
            child: Container(
              alignment: Alignment.center,
              // margin: const EdgeInsets.only(right:15),
              child: Text(
                '취소',
                style: TextStyle(
                  color: Color.fromARGB(0xFF, 0x33, 0x33, 0x33),
                  fontSize: 15,
                  fontFamily: 'Nanum Gothic',
                  letterSpacing: 0.09,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
        title: Text(
          '서비스 이용약관',
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
      body: CheckAgr(),
    );
  }
}

class CheckAgr extends StatefulWidget {
  @override
  _CheckAgrState createState() => _CheckAgrState();
}

class _CheckAgrState extends State<CheckAgr> {
  bool _wholeAgr = false;
  bool _serviceAgr = false;
  bool _personalInfoAgr = false;
  bool _cancerAlarm = false;
  bool _next = false;

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 330,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(0xFF, 0xD2, 0xD7, 0xE1),
              ),
            ),
            margin: const EdgeInsets.only(top: 42),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 12, bottom: 12),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 9, right: 9),
                        child: IconButton(
                          icon: (_wholeAgr
                              ? Icon(
                                  Icons.check_circle,
                                  size: 30,
                                  color: Color.fromARGB(0xFF, 0xFC, 0x75, 0x69),
                                )
                              : Icon(
                                  Icons.check_circle,
                                  size: 30,
                                  color: Color.fromARGB(0xFF, 0xD2, 0xD7, 0xE1),
                                )),
                          onPressed: _checkWholeAgr,
                        ),
                      ),
                      Text(
                        '약관 전체동의',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Nanum Gothic',
                          color: Color.fromARGB(0xFF, 0x46, 0x46, 0x67),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding:
                            const EdgeInsets.only(left: 7, top: 10, bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: (_serviceAgr ? checked : unchecked),
                                    onPressed: _checkServiceAgr,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 7),
                                    child: Text(
                                      '서비스 이용약관 동의 (필수)',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'Nanum Gothic',
                                        color: Color.fromARGB(
                                            0xFF, 0x46, 0x46, 0x67),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 60,
                              height: 15,
                              child: FlatButton(
                                child: Text(
                                  '보기',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Nanum Gothic',
                                    color:
                                        Color.fromARGB(0xFF, 0x46, 0x46, 0x67),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/serviceAgrInfo');
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            const EdgeInsets.only(left: 7, top: 5, bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: (_personalInfoAgr
                                        ? checked
                                        : unchecked),
                                    onPressed: _checkPersonalInfoAgr,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 7),
                                    child: Text(
                                      '개인정보 수집 및 이용 동의 (필수)',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'Nanum Gothic',
                                        color: Color.fromARGB(
                                            0xFF, 0x46, 0x46, 0x67),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 60,
                              height: 15,
                              child: FlatButton(
                                child: Text(
                                  '보기',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Nanum Gothic',
                                    color:
                                        Color.fromARGB(0xFF, 0x46, 0x46, 0x67),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/personalInfo');
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            const EdgeInsets.only(left: 7, top: 5, bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: (_cancerAlarm ? checked : unchecked),
                                    onPressed: _checkCancerAlarm,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 7),
                                    child: Text(
                                      '유방암 관련 정보 알림 (선택)',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'Nanum Gothic',
                                        color: Color.fromARGB(
                                            0xFF, 0x46, 0x46, 0x67),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(0xFF, 0xD2, 0xD7, 0xE1),
              ),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 15, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'NABI',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Montserrat Semi Bold',
                          color: Color.fromARGB(0xFF, 0x65, 0x65, 0x77),
                          letterSpacing: 0.07,
                        ),
                      ),
                      Text(
                        '가 직접 설명해드릴게요',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Nanum Gothic',
                          color: Color.fromARGB(0xFF, 0x65, 0x65, 0x77),
                          letterSpacing: 0.07,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 22),
                            child: Image.asset(
                              'images/mail.png',
                              width: 26,
                              height: 31,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              '제 개인정보는 괜찮은건가요?',
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Nanum Gothic',
                                color: Color.fromARGB(0xFF, 0x33, 0x33, 0x33),
                                letterSpacing: -0.28,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: IconButton(
                            icon: Icon(Icons.keyboard_arrow_up),
                            onPressed: () {}),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 22),
                            child: Image.asset(
                              'images/mail.png',
                              width: 26,
                              height: 31,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              '정보알림 서비스는 광고성 알림인가요?',
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Nanum Gothic',
                                color: Color.fromARGB(0xFF, 0x33, 0x33, 0x33),
                                letterSpacing: -0.28,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: IconButton(
                            icon: Icon(Icons.keyboard_arrow_up),
                            onPressed: () {}),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: FlatButton(
                    child: Text(
                      '다음',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'AppleSD Gothic Semi Bold',
                        letterSpacing: 0.08,
                      ),
                    ),
                    textColor: Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF),
                    onPressed: () {
                      if (_next) {
                        Navigator.pushNamed(context, '/signUpByEmail');
                      }
                    },
                    color: _next
                        ? Color.fromARGB(0xFF, 0xFC, 0x75, 0x69)
                        : Color.fromARGB(0xFF, 0xD2, 0xD2, 0xD2),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget checked = Icon(
    Icons.check,
    size: 24,
    color: Color.fromARGB(0xFF, 0xFC, 0x75, 0x69),
  );

  Widget unchecked = Icon(
    Icons.check,
    size: 24,
    color: Color.fromARGB(0xFF, 0xD2, 0xD7, 0xE1),
  );

  void _checkWholeAgr() {
    setState(() {
      if (_wholeAgr) {
        _wholeAgr = false;
        _serviceAgr = false;
        _personalInfoAgr = false;
        _cancerAlarm = false;
      } else if (!_wholeAgr) {
        _wholeAgr = true;
        _serviceAgr = true;
        _personalInfoAgr = true;
        _cancerAlarm = true;
      }
      if (_serviceAgr & _personalInfoAgr) {
        _next = true;
      } else {
        _next = false;
      }
    });
  }

  void _checkServiceAgr() {
    setState(() {
      if (_serviceAgr) {
        _serviceAgr = false;
      } else {
        _serviceAgr = true;
      }
      if ((_serviceAgr & _personalInfoAgr & _cancerAlarm)) {
        _wholeAgr = true;
      } else {
        _wholeAgr = false;
      }
      if (_serviceAgr & _personalInfoAgr) {
        _next = true;
      } else {
        _next = false;
      }
    });
  }

  void _checkPersonalInfoAgr() {
    setState(() {
      if (_personalInfoAgr) {
        _personalInfoAgr = false;
      } else {
        _personalInfoAgr = true;
      }
      if ((_serviceAgr & _personalInfoAgr & _cancerAlarm)) {
        _wholeAgr = true;
      } else {
        _wholeAgr = false;
      }
      if (_serviceAgr & _personalInfoAgr) {
        _next = true;
      } else {
        _next = false;
      }
    });
  }

  void _checkCancerAlarm() {
    setState(() {
      if (_cancerAlarm) {
        _cancerAlarm = false;
      } else {
        _cancerAlarm = true;
      }
      if ((_serviceAgr & _personalInfoAgr & _cancerAlarm)) {
        _wholeAgr = true;
      } else {
        _wholeAgr = false;
      }
    });
  }
}
