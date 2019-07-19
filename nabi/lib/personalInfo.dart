import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PersonalInfo extends StatelessWidget {
  Widget build(BuildContext context) {
    Widget serviceInfo = Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: ListView(
        children: [
          Text(
            '서비스 이용약관 내용',
            style: TextStyle(
              fontSize: 13,
              fontFamily: 'Nanum Gothic',
              letterSpacing: 0.08,
              color: Color.fromARGB(0xFF, 0x33, 0x33, 0x33),
            ),
          ),
        ],
      ),
    );

    Widget personalInfo = Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: ListView(
        children: [
          Text(
            '개인정보 처리방침 내용',
            style: TextStyle(
              fontSize: 13,
              fontFamily: 'Nanum Gothic',
              letterSpacing: 0.08,
              color: Color.fromARGB(0xFF, 0x33, 0x33, 0x33),
            ),
          ),
        ],
      ),
    );

    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        backgroundColor: Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.close,
              size: 24,
              color: Color.fromARGB(0xFF, 0x00, 0x00, 0x00),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
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
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text(
                  '    서비스 이용약관    ',
                  style: TextStyle(
                    fontFamily: 'Nanum Gothic',
                    letterSpacing: 0.07,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  '    개인정보 처리방침    ',
                  style: TextStyle(
                    fontFamily: 'Nanum Gothic',
                    letterSpacing: 0.07,
                  ),
                ),
              ),
            ],
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Color.fromARGB(0xFF, 0xFC, 0x75, 0x69),
            labelColor: Color.fromARGB(0xFF, 0x22, 0x22, 0x22),
            unselectedLabelColor: Color.fromARGB(0xFF, 0x99, 0x99, 0x99),
          ),
        ),
        body: TabBarView(
          children: [
            serviceInfo,
            personalInfo,
          ],
          physics: ClampingScrollPhysics(),
        ),
      ),
    );
  }
}
