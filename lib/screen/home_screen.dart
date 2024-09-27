import 'package:flutter/material.dart';
import 'package:lafb/models/class_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LAFBColors.bg,
      appBar: AppBar(
        title: Text('LAFB'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 20.0),
                    Container(
                      margin: EdgeInsets.only(left: 330.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          'ພາສາ >',
                          style: TextStyle(
                            color: LAFBColors.whiteTile,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/icons/logo.png',
                      width: 150.0,
                      height: 150.0,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60.0),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide.none,
                  ),
                  child: Container(
                    margin: EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'ເຂົ້າສູ່ລະບົບ',
                              style: TextStyle(fontSize: 18.0),
                            ),
                            Image.asset(
                              'assets/img/service.png',
                              height: 30.0,
                              width: 30.0,
                            ),
                          ],
                        ),
                        const SizedBox(height: 25),
                        Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 50.0),
                                hintText: 'ກະລຸນາໃຊ້ຊື່ຜູ້ໃຊ້',
                                prefixIcon:
                                    Image.asset('assets/img/account.png'),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            const SizedBox(height: 15.0),
                            // TextFormField(
                            //   obscureText: obscureText,
                            //   decoration: InputDecoration(
                            //     suffixIcon: GestureDetector(
                            //       onTap: () {
                            //         setState(() {
                            //           obscureText = !obscureText;
                            //         });
                            //       },
                            //       child: obscureText
                            //           ? const Icon(
                            //               Icons.visibility_off_outlined,
                            //               color: Colors.black54,
                            //             )
                            //           : const Icon(
                            //               Icons.visibility_outlined,
                            //               color: Colors.black45,
                            //             ),
                            //     ),
                            //     hintText: 'ກະລຸນາໃສ່ລະຫັດຜ່ານ',
                            //     prefixIcon:
                            //         Image.asset('assets/img/password.png'),
                            //     border: OutlineInputBorder(
                            //       borderRadius: BorderRadius.circular(10.0),
                            //     ),
                            //   ),
                            // ),
                            TextFormField(
                              obscureText: obscureText,
                              decoration: InputDecoration(
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      obscureText = !obscureText;
                                    });
                                  },
                                  child: obscureText
                                      ? const Icon(
                                          Icons.visibility_off_outlined,
                                          color: Colors.black54,
                                        )
                                      : const Icon(
                                          Icons.visibility_outlined,
                                          color: Colors.black45,
                                        ),
                                ),
                                hintText: 'ກະລຸນາໃສ່ລະຫັດຜ່ານ',
                                prefixIcon:
                                    Image.asset('assets/img/password.png'),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 50.0),
                              ),
                            ),

                            const SizedBox(height: 35.0),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('ເຂົ້າສູ່ລະບົບ'),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: LAFBColors.bg,
                                  foregroundColor: LAFBColors.black,
                                  minimumSize: Size(250, 40)),
                            ),
                            const SizedBox(height: 15.0),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('ລົງທະບຽນ'),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: LAFBColors.buttonRegister,
                                  foregroundColor: LAFBColors.whiteTile,
                                  minimumSize: Size(250, 40)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
