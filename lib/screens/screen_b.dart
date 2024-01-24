import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  final DateTime startTime;

  ScreenB({required this.startTime});

  @override
  Widget build(BuildContext context) {
    DateTime endTime = DateTime.now();
    Duration duration = endTime.difference(startTime);

    return Scaffold(
      appBar: AppBar(
        title: Text('計測結果'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('↓　計測の結果です'),
            SizedBox(height: 20),
            Container(
              height: 200, // 高さを200に設定
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(50.50),
                  child: Column(
                    children: [
                      Text("${duration.inSeconds}秒間かかりました！"),
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // ScreenBを閉じてScreenAに戻る
              },
              child: Text('最初の画面に戻ります'),
            ),
          ],
        ),
      ),
    );
  }
}
