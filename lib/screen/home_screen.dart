import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LAFB'),
        centerTitle: true,
      ),
      body: Expanded(
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset('assets/icons/lafb.jpeg'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10.0, left: 10.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('ເຂົ້າສູ່ລະບົບ'),
                        Image.asset(
                          'assets/icons/lafb.jpeg',
                          height: 30.0,
                          width: 30.0,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextFormField(),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
