import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TopScreen extends StatefulWidget {
  @override
  _TopScreenState createState() => _TopScreenState();
}



class _TopScreenState extends State<TopScreen> {

  // ++++++++++++++++++++++++++++++++++++
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: Text(
          "【Airbnb】 > Covit-19への取り組みをご案内いたします。",
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.grey[700],
            decoration:TextDecoration.underline,
          ),
          overflow: TextOverflow.fade, // はみ出しテキストfade ->折返しは次回
          softWrap: false,
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.sort),
            tooltip: 'Sort',
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.grey,
          ),
          IconButton(
            icon: const Icon(Icons.add),
            tooltip: 'AddScreen',
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.grey,
          ),
        ],
        centerTitle: true,
        elevation: 10.0,
      ),


      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            // ======= 行き先サーチ ==================
            Container(
              decoration: BoxDecoration(
                // color: Colors.orange[100],
                // borderRadius: BorderRadius.all(Radius.circular(100.0)),
                borderRadius: BorderRadius.circular(100.0),
                border: Border.all(
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[500].withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 0,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: TextField(
                  // obscureText: true, // Passwordのマスク"*****d"
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    // border: OutlineInputBorder(), // BoxDecoration側で吸収
                    labelText: '行き先はどちらですか?',
                    hintText: 'hint: 一生に一度は行きたい場所',
                  ),
                  onChanged: null,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            // ======= 体験の提供 ==================
            Container(  // TODO: topOmage
              height: 50,
              color: Colors.amber[500],
              child: const Center(child: Text('Entry B')),
            ),
            SizedBox(height: 10.0),
            // ======= 説明内容 ==================
            Container(
              height: 360,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 180.0,
                    // color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.only(top:20.0, left:20.0),
                      child: ListView(
                        children: [
                          SizedBox(height: 90, child: Text("ゲスト向け", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),)),
                          Divider(height:5, thickness:2, color:Colors.orange[700], indent: 7, endIndent: 7),
                          SizedBox(height: 90, child: Text("旅行の最新情報", style: TextStyle(fontSize: 15.0),)),
                          Divider(height:5, thickness:1, color:Colors.orange[700], indent: 7, endIndent: 7),
                          SizedBox(height: 90, child: Text("キャンセルオプション", style: TextStyle(fontSize: 15.0),)),
                          Divider(height:5, thickness:2, color:Colors.orange[700], indent: 7, endIndent: 7),
                          SizedBox(height: 90, child: Text("ヘルプセンター", style: TextStyle(fontSize: 15.0),)),
                        ],
                      ),
                    )
                  ),
                  Container(
                    width: 180.0,
                    // color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.only(top:20.0, left:20.0),
                      child: ListView(
                        children: [
                          SizedBox(height: 90, child: Text("ホスト向け", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),)),
                          Divider(height:5, thickness:2, color:Colors.orange[700], indent: 7, endIndent: 7),
                          SizedBox(height: 90, child: Text("CEOメッセージ", style: TextStyle(fontSize: 15.0),)),
                          Divider(height:5, thickness:2, color:Colors.orange[700], indent: 7, endIndent: 7),
                          SizedBox(height: 90, child: Text("ホスティングテク", style: TextStyle(fontSize: 15.0),)),
                          Divider(height:5, thickness:2, color:Colors.orange[700], indent: 7, endIndent: 7),
                          SizedBox(height: 90, child: Text("医療従事者向け情報", style: TextStyle(fontSize: 15.0),)),
                        ],
                      ),
                    )
                  ),
                  Container(
                    width: 180.0,
                    // color: Colors.green,
                    child: Padding(
                      padding: const EdgeInsets.only(top:20.0, left:20.0),
                      child: ListView(
                        children: [
                          SizedBox(height: 90, child: Text("Covit19対応", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),)),
                          Divider(height:5, thickness:2, color:Colors.orange[700], indent: 7, endIndent: 7),
                          SizedBox(height: 90, child: Text("対策プログラム", style: TextStyle(fontSize: 15.0),)),
                          Divider(height:5, thickness:2, color:Colors.orange[700], indent: 7, endIndent: 7),
                          SizedBox(height: 90, child: Text("施設登録", style: TextStyle(fontSize: 15.0),)),
                          Divider(height:5, thickness:2, color:Colors.orange[700], indent: 7, endIndent: 7),
                          SizedBox(height: 90, child: Text("寄付", style: TextStyle(fontSize: 15.0),)),
                        ],
                      ),
                    )
                  ),
                  Container(
                    width: 180.0,
                    // color: Colors.yellow,
                    child: Padding(
                      padding: const EdgeInsets.only(top:20.0, left:20.0),
                      child: ListView(
                        children: [
                          SizedBox(height: 90, child: Text("もっと見る", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),)),
                          Divider(height:5, thickness:2, color:Colors.orange[700], indent: 7, endIndent: 7),
                          SizedBox(height: 90, child: Text("Airbnbニュース", style: TextStyle(fontSize: 15.0),)),
                          Divider(height:5, thickness:2, color:Colors.orange[700], indent: 7, endIndent: 7),
                          SizedBox(height: 90, child: Text("世界保健機関", style: TextStyle(fontSize: 15.0),)),
                          Divider(height:5, thickness:2, color:Colors.orange[700], indent: 7, endIndent: 7),
                        ],
                      ),
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),


      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Favorite",
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: "Travel",
            icon: Icon(Icons.flight),
          ),
          BottomNavigationBarItem(
            label: "Chat",
            icon: Icon(Icons.chat),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.school),
          ),
        ],
        type: BottomNavigationBarType.fixed,  // 5種固定に必須
        // fixedColor: Colors.orange[200],  // color選択２項目どちらかのみ
        selectedItemColor: Colors.amber[800],
        elevation: 10.0,
        selectedFontSize: 16.0,
        unselectedFontSize: 10.0,
        iconSize: 30.0,
      ),
    );
  }





}