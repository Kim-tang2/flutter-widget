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
      backgroundColor: Colors.green[800],
      appBar: AppBar(
        title: Text('OGU'),
        backgroundColor: Colors.green[700],
        centerTitle: true,
        //앱 바 타이블 가운데 정렬
        elevation: 0.0,
        //앱 바 입체감 없애기
//        leading: IconButton( //leading : 위젯이나 아이콘을 앱바나 리스트뷰 왼쪽에 위치시키는 기능
//          icon: Icon(Icons.menu),
//          onPressed: () {
//            print('menu button is clicked');
//          },
//        ),
        actions: <Widget>[
          //앱 바 오른쪽에 아이콘 배치 Column, Row, Child widget과 같은 형태
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('shopping button is clicked');
            },
          ),

          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('search button is clicked');
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
            child: Center(
              child: CircleAvatar(
                //이미지를 원형으로
                backgroundImage: AssetImage('assets/ogu.gif'),
                radius: 60.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, //가로축 시작점 정렬
              children: <Widget>[
                Divider(
                  //구분선 위젯
                  height: 60.0, //구분선의 위 아래 30픽셀씩 띄워주기
                  color: Colors.grey[900],
                  thickness: 0.5, //선 두께 조절
                  endIndent: 30.0, //끝에서 부터 구분선이 얼마나 떨어져야하는지
                ),
                Text(
                  'NAME',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0, //철자 간격 조정
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'OGU',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2.0, //철자 간격 조정
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Builder(
                      builder: (BuildContext ctx) {
                        return FlatButton(
                          child: Text(
                            'Hi',
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.blue,
                          onPressed: () {
                            Scaffold.of(ctx).showSnackBar(SnackBar(
                              content: Text('Hello! My name is OGU'),
                            ));
                          },
                        );
                      },
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Non_builder_snackbar(),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'OGU AGE',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0, //철자 간격 조정
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '7',
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
                    Text(
                      'DANCE',
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
                    Text(
                      'SING',
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
                    Text(
                      'GAME',
                      style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/ogu.png'),
              radius: 40.0,
              backgroundColor: Colors.green[800],
            ),
          )
        ],
      ),
      drawer: Drawer(
        // leading을 써서 아이콘을 만들어주지 않아도 햄버거 모양의 아이콘이 생성된다
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                //현재 사용자의 이미지를 가져옴
                backgroundImage: AssetImage('assets/ogu_login.png'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: <Widget>[
                //한 개 이상의 계정 이미지를 가져올 수 있기에 위젯 리스트 형식을 띄게 됨
                CircleAvatar(
                  backgroundImage: AssetImage('assets/jake.jpg'),
                  backgroundColor: Colors.white,
                )
              ],
              accountName: Text('OGU'),
              // 필수항목
              accountEmail: Text('OGU@1dea.kr'),
              // 필수항목
              onDetailsPressed: () {
                //작은 삼각형 디테일 버튼
                print("ondetail button click");
              },
              decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.only(
                    // 좌우 하단부 곡선 처리
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  )),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: () {
                print('home is clicked');
              },
              trailing: Icon(Icons.add), // 리스트 타일 오른쪽 아이콘 추가
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('Settings'),
              onTap: () {
                print('settings is clicked');
              },
              trailing: Icon(Icons.add), // 리스트 타일 오른쪽 아이콘 추가
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text('Q&A'),
              onTap: () {
                print('qna is clicked');
              },
              trailing: Icon(Icons.add), // 리스트 타일 오른쪽 아이콘 추가
            ),
          ],
        ),
      ),
    );
  }
}

class Non_builder_snackbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Hi'),
      onPressed: () {
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Hi My name is OGU',
              textAlign: TextAlign.center, // 텍스트 가운데 정렬
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blue,
            duration: Duration(milliseconds: 1000), // 스낵바 1초
          ),
        );
      },
    );
  }
}
