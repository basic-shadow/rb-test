import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

Color? mainColor = Colors.indigo[400];

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(top: 25.h, bottom: 10.h, left: 20.w, right: 20.w),
          child: Column(
            children: [
              // APPBAR
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu, color: Colors.black, size: 22.sp),
                  Icon(Icons.location_on_outlined,
                      color: Colors.black, size: 22.sp),
                  Container(
                    padding: EdgeInsets.all(9.sp),
                    decoration:
                        BoxDecoration(color: mainColor, shape: BoxShape.circle),
                    child: Icon(Icons.notifications_outlined,
                        color: Colors.white, size: 24.sp),
                  ),
                ],
              )),
              SizedBox(height: 20.h),
              // SEARCH
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300]!,
                      spreadRadius: 2,
                      blurRadius: 10,
                    )
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 6.h, horizontal: 20.w),
                    border: InputBorder.none,
                    hintText: "Поиск по номеру заказа",
                    hintStyle: TextStyle(color: Colors.grey[400]),
                  ),
                ),
              ),

              SizedBox(height: 20.h),
              // COMPONENT
              Component(
                bodyText: "Макдональдс",
                time: "10:34",
                title: "У вашего избранного места...",
                icon: Icons.favorite_border,
              ),
              Component(
                  bodyText: "Body",
                  time: "10:24",
                  title: "Title",
                  icon: Icons.access_time,
                  orderNumber: 12345),
              Component(
                  bodyText: "Body",
                  time: "10:37",
                  title: "Изменился статус заказа",
                  icon: Icons.message_outlined,
                  orderNumber: 13235),
              Component(
                  bodyText: "Body",
                  time: "10:14",
                  title: "Title",
                  icon: Icons.note_alt,
                  orderNumber: 52345),
            ],
          ),
        ),
      ),
    );
  }
}

class Component extends StatelessWidget {
  final String? bodyText;
  final String time;
  final String title;
  final int? orderNumber;
  final IconData icon;

  const Component({
    Key? key,
    required this.time,
    required this.title,
    required this.icon,
    this.bodyText,
    this.orderNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
      margin: EdgeInsets.only(bottom: 20.h),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300]!,
            spreadRadius: 2,
            blurRadius: 10,
          )
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(9.sp),
            decoration: BoxDecoration(color: mainColor, shape: BoxShape.circle),
            child: Icon(icon, color: Colors.white, size: 20.sp),
          ),
          SizedBox(width: 12.w),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(time, style: TextStyle(color: Colors.grey[400])),
                SizedBox(height: 6.h),
                Row(
                  children: [
                    Text(title),
                    SizedBox(width: 6.w),
                    orderNumber != null
                        ? Text(
                            "№$orderNumber",
                            style: TextStyle(
                                color: mainColor, fontWeight: FontWeight.bold),
                          )
                        : SizedBox.shrink()
                  ],
                ),
                // MAIN BODY
                bodyText != null
                    ? Container(
                        color: Color(0xFFF7F7F7),
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                            vertical: 12.h, horizontal: 10.w),
                        margin: EdgeInsets.only(top: 16.h, bottom: 16.h),
                        child: Text(bodyText!),
                      )
                    : SizedBox.shrink(),
                // BUTTON
                TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Кнопка нажата")));
                    },
                    child: Text(
                        orderNumber != null
                            ? "Перейти в заказ"
                            : "Перейти в карточку места",
                        style: TextStyle(color: mainColor)))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
