import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyHomePage extends StatelessWidget {
  Color? mainColor = Colors.indigo[400];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
          child: Column(
            children: [
              // APPBAR
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu, color: Colors.black, size: 20.sp),
                  Icon(Icons.location_on_outlined,
                      color: Colors.black, size: 20.sp),
                  Container(
                    padding: EdgeInsets.all(15.sp),
                    decoration:
                        BoxDecoration(color: mainColor, shape: BoxShape.circle),
                    child: Icon(Icons.location_on_outlined,
                        color: Colors.white, size: 24.sp),
                  ),
                ],
              )),

              SizedBox(height: 20.h),
              // SEARCH
              Container(
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow()],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8.h, horizontal: 14.w),
                    border: InputBorder.none,
                    hintText: "Поиск по номеру заказа",
                    hintStyle: TextStyle(color: Colors.grey[300]),
                  ),
                ),
              ),

              SizedBox(height: 20.h),
              // COMPONENT
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
                margin: EdgeInsets.only(bottom: 20.h),
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow()],
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15.sp),
                          decoration: BoxDecoration(
                              color: mainColor, shape: BoxShape.circle),
                          child: Icon(Icons.location_on_outlined,
                              color: Colors.white, size: 24.sp),
                        ),
                        SizedBox(width: 14.w),
                        Column(
                          children: [
                            Text("10:34",
                                style: TextStyle(color: Colors.grey[200])),
                            SizedBox(height: 2.h),
                            Text("ТЕКСТ")
                          ],
                        ),
                      ],
                    ),
                    // MAIN BODY
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 12.h, horizontal: 10.w),
                      margin: EdgeInsets.symmetric(vertical: 16.h),
                      child: Text("TEXT 222"),
                    ),
                    // BUTTON
                    TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Кнопка нажата")));
                        },
                        child:
                            Text("Перейти", style: TextStyle(color: mainColor)))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
