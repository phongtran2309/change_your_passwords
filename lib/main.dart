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
  late bool _obscureTextConfirm = true;

  @override
  Widget build(BuildContext context) {
    const Color labelColor = Color(0xff1B447E);
    const Color buttonColor = Color(0xff1E60C0);

    return MaterialApp(
        title: 'Reset passwords',
        debugShowCheckedModeBanner: false,
        // Navigator operation requested with a context that does not include a Navigator.
        // add scaffold in builder too add Navigator
        home: Builder(
          builder: (BuildContext context) {
            return Scaffold(
              body: Container(
                margin: const EdgeInsets.only(top: 40, left: 17, right: 17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 66, left: 18),
                            child: const Icon(
                              Icons.arrow_back,
                              color: labelColor,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 60, right: 18),
                            child: Image.asset(
                              'assets/images/logo_finbox.png',
                              width: 99,
                              height: 26,
                            ),
                          ),
                        ]),
                    // TODO: lam tiep
                    const SizedBox(height: 34),

                    const Text('Mật khẩu mới',
                        style: TextStyle(
                            color: labelColor,
                            fontSize: 28,
                            fontWeight: FontWeight.w700)),
                    const SizedBox(height: 10),
                    const Text('Bạn vui lòng nhập mật khẩu mới để hoàn tất.',
                        style: TextStyle(
                          color: labelColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        )),
                    const SizedBox(height: 8),
                    const SizedBox(
                      width: 42,
                      height: 3,
                      child: DecoratedBox(
                        decoration: BoxDecoration(color: Color(0xff3563A3)),
                      ),
                    ),
                    const SizedBox(height: 32),
                    _generateTextFieldPassword(),
                    _generateTextFieldConfirmPassword(),
                    SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: buttonColor,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const SuccessfulConfirmationPage()),
                            );
                          },
                          child: const Text(
                            'XÁC NHẬN',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        )),
                  ],
                ),
              ),
            );
          },
        ));
  }

  Widget _generateTextFieldConfirmPassword() {
    return SizedBox(
      width: double.infinity,
      height: 117.0,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: RichText(
                text: const TextSpan(
                text: 'Xác nhận mật khẩu',
                style: TextStyle(
                  color: Color(0xff777777),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: '*',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ))
                ],
              )),
            ),
            const SizedBox(height: 14),
            TextField(
              obscureText: _obscureTextConfirm,
              decoration: InputDecoration(
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 9.0),
                        child: Text(
                          _obscureTextConfirm ? 'Hiển thị' : 'Ẩn',
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 14.29),
                        child: IconButton(
                          icon: Icon(
                            _obscureTextConfirm
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureTextConfirm = !_obscureTextConfirm;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  hintText: 'Xác nhận mật khẩu của bạn',
                  contentPadding: const EdgeInsets.only(
                    left: 30.0,
                    top: 18.0,
                    bottom: 15.0,
                  ),
                  hintStyle: const TextStyle(color: Color(0xffCCCFD4))),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _generateTextFieldPassword() {
    return SizedBox(
      width: double.infinity,
      height: 101.0,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: RichText(
                  text: const TextSpan(
                text: 'Mật khẩu',
                style: TextStyle(
                  color: Color(0xff777777),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: '*',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ))
                ],
              )),
            ),
            const SizedBox(height: 14),
            TextField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 9.0),
                        child: Text(
                          _obscureText ? 'Hiển thị' : 'Ẩn',
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 14.29),
                        child: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  hintText: 'Nhập mật khẩu của bạn',
                  contentPadding: const EdgeInsets.only(
                    left: 30.0,
                    top: 18.0,
                    bottom: 15.0,
                  ),
                  hintStyle: const TextStyle(color: Color(0xffCCCFD4))),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class SuccessfulConfirmationPage extends StatefulWidget {
  const SuccessfulConfirmationPage({Key? key}) : super(key: key);

  @override
  State<SuccessfulConfirmationPage> createState() =>
      _SuccessfulConfirmationPageState();
}

class _SuccessfulConfirmationPageState
    extends State<SuccessfulConfirmationPage> {
  @override
  Widget build(BuildContext context) {
    const Color buttonColor = Color(0xff1E60C0);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 158.0),
                child: Image.asset(
                  'assets/images/success.png',
                  height: 135,
                  width: 135,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 28.0),
                child: const Text(
                  'Đổi mật khẩu thành công',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 470.0),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: buttonColor,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'QUAY VỀ TRANG ĐĂNG NHẬP',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
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
