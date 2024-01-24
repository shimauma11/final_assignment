import 'package:flutter/material.dart';
import 'screen_b.dart';

class ScreenA extends StatefulWidget {
  @override
  _ScreenAState createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  int count = 0;
  DateTime? startTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('30回ピッタリ\nプッシュボタンを押そう'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                  if(count > 30){
                    count = 0;
                  }
                });
              },
              child: Text('push: $count'),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count = 0;
                      startTime = DateTime.now();
                    });
                  },
                  child: Text('Start'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    if (startTime != null && count == 30) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ScreenB(startTime: startTime!),
                        ),
                      );
                    }
                  },
                  child: Text('End'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
