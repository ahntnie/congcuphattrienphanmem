import 'package:flutter/material.dart';

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Text(
              "THÔNG TIN CÁ NHÂN",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 50),
            )
          ],
        ),
        Row(
          children: [
            Padding(padding: EdgeInsets.all(16.0)),
            Text("Họ tên: Nguyễn Tấn Phước")
          ],
        ),
        Row(children: [
          Padding(padding: EdgeInsets.all(16.0)),
          Text("Ngày sinh: 22/10/2003")
        ]),
        Row(children: [
          Padding(padding: EdgeInsets.all(16.0)),
          Text("Giới tính: Nam")
        ]),
        Row(children: [
          Padding(padding: EdgeInsets.all(16.0)),
          Text("Số điện thoại: 0969475617")
        ]),
        Row(children: [
          Padding(padding: EdgeInsets.all(16.0)),
          Text("Địa chỉ: 0969475617")
        ])
      ],
    );
  }
}
