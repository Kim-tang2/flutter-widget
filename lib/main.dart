import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //디버그 모드 빨간 띠 제거
      title: 'OGU',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text('OGU'),
        backgroundColor: Colors.amber[700],
        centerTitle: true, //앱 바 타이블 가운데 정렬
        elevation: 0.0, //앱 바 입체감 없애기
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //가로축 시작점 정렬
          children: <Widget>[
            Center(
              child: CircleAvatar( //이미지를 원형으로
                backgroundImage: AssetImage('assets/ogu.gif'),
                radius: 60.0,
              ),
            ),

            Divider( //구분선 위젯
              height: 60.0, //구분선의 위 아래 30픽셀씩 띄워주기
              color: Colors.orange[900],
              thickness: 0.5, //선 두께 조절
              endIndent: 30.0, //끝에서 부터 구분선이 얼마나 떨어져야하는지
            ),

            Text('NAME',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0, //철자 간격 조정
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('OGU',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0, //철자 간격 조정
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text('OGU AGE',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0, //철자 간격 조정
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('7',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0, //철자 간격 조정
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('DANCE',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('SING',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('GAME',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),

            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ogu.png'),
                radius: 40.0,
                backgroundColor: Colors.amber[800],
              ),
            )
          ],
        ),
      ),
    );
  }
}

