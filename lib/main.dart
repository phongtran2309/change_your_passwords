import 'package:flutter/material.dart';

void main() {
  runApp(const ChangePasswordPage());
}

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  // This widget is the root of your application.
  late bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  @override
  Widget build(BuildContext context) {
    const Color labelColor = Color(0xff1B447E);
    const Color buttonColor = Color(0xff1E60C0);

    return MaterialApp(
      title: 'Reset passwords',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                        const Icon(
                        Icons.arrow_back,
                        color: labelColor,
                         ),
                        Image.asset(
                        'assets/logo_finbox.png',
                        width: 99,
                        height: 26,
                     ),
                    ])),
                  // TODO: lam tiep
                  const SizedBox(height: 35),

                  const Text('Mật khẩu mới',
                      style: TextStyle(
                          color: labelColor,
                          fontSize: 28,
                          fontWeight: FontWeight.w700)),
                  const SizedBox(height: 7),
                  const Text('Bạn vui lòng nhập mật khẩu mới để hoàn tất.',
                      style: TextStyle(
                          color: labelColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,)),
                  const SizedBox(height: 8),
                  const SizedBox(
                    width: 42,
                    height: 3,
                    child: DecoratedBox(
                      decoration: BoxDecoration(color: Color(0xff3563A3)),
                    ),
                  ),
                  const SizedBox(height: 35),
                   TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.visibility),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        label: const Text(
                          'Mật khẩu*',
                          style: TextStyle(color: Color(0xffCCCFD4)),
                        ),
                        hintText: 'Nhập mật khẩu của bạn',
                        hintStyle: const TextStyle(color: Color(0xffCCCFD4))),

                  ),
                  const SizedBox(height: 35),
                   TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.visibility_off),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        label: const Text(
                          'Xác nhận mật khẩu*',
                          style: TextStyle(color: Color(0xffCCCFD4)),
                        ),
                        hintText: 'Xác nhận mật khẩu của bạn',
                        hintStyle: const TextStyle(color: Color(0xffCCCFD4))),
                       ),
                     const SizedBox(height: 35),

                     SizedBox(
                      width: 345,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: buttonColor,
                        ),
                        onPressed: null,
                        child: const Text(
                          'XÁC NHẬN',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),

                        ),
                      )),
                ],
        ),
        ),
      ),
    );
  }
}
