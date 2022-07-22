import 'package:flutter/material.dart';

void main() {
  runApp(const ChangePasswordPage());
}

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const Color labelColor = Color(0xff1B447E);

    return MaterialApp(
      title: 'Reset passwords',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const Icon(
                Icons.arrow_back,
                color: labelColor,
              ),
              Image.asset(
                'assets/logo_finbox.png',
                width: 99,
                height: 26,
              ),
            ]),
            // TODO: lam tiep
            const Text('Mật khẩu mới',
                style: TextStyle(
                    color: labelColor,
                    fontSize: 28,
                    fontWeight: FontWeight.w700)),
            const Text('Bạn vui lòng nhập mật khẩu mới để hoàn tất.',
                style: TextStyle(
                    color: labelColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500)),
            const SizedBox(
              width: 42,
              height: 3,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Color(0xff3563A3)),
              ),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                  label: Text(
                    'Mật khẩu*',
                    style: TextStyle(color: Colors.red),
                  ),
                  hintText: 'Nhập mật khẩu của bạn'),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text(
                    'Xác nhận mật khẩu*',
                    style: TextStyle(color: Colors.red),
                  ),
                  hintText: 'Xác nhận mật khẩu của bạn'),
            ),
            SizedBox(
              width: 345,
              height: 50,
              child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,),
                    child: const Center(
                        child: Text('Xác nhận')
                    ),
              )),
          ],
        )),
      ),
    );
  }
}
