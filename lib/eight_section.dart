import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/gmail.dart';
import 'package:sv388shop/snackbar.dart';

import 'animated_texts_button.dart';
import 'timer_container.dart';
import 'timer_manager.dart';

class EightSection extends StatefulWidget {
  final remainingSeconds;
  EightSection({required this.remainingSeconds, super.key});

  @override
  State<EightSection> createState() => _EightSectionState();
}

class _EightSectionState extends State<EightSection> {
  final TimerManager timerManager = TimerManager();

  final TextEditingController input1Controller = TextEditingController();

  final TextEditingController input2Controller = TextEditingController();

  final TextEditingController input3Controller = TextEditingController();

  String? dropdown1Value;
  String? dropdown2Value;

  bool validateInputs() {
    return input1Controller.text.isNotEmpty &&
        input2Controller.text.isNotEmpty &&
        input3Controller.text.isNotEmpty &&
        dropdown1Value != null &&
        dropdown2Value != null;
  }

  bool _isLoading = false;

  Future<void> _sendEmail() async {
    if (!validateInputs()) {
      ShowSnackBar().showSnackBar(context, 'Vui lòng điền đầy đủ thông tin');

      return;
    }

    setState(() {
      _isLoading = true; // Start loading state
    });

    final smtpServer = gmail('cupertinostudios@gmail.com', 'yqglqcuhiwklooqi');

    final message = Message()
      ..from = const Address('nguyentienman1243@gmail.com')
      ..recipients.add('nguyentienman1243@gmail.com') // Admin's email address
      ..subject = 'Gửi đơn đặt hàng mới'
      ..text = '''
      Họ và tên: ${input1Controller.text}
      Số điện thoại: ${input2Controller.text}
      Address: ${input3Controller.text}
      Màu sắc: $dropdown1Value
      Size: $dropdown2Value
      ''';

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ${sendReport.toString()}');
      ShowSnackBar().showSnackBar(context, 'Email gửi thành công!');
    } catch (e) {
      print('Error sending email: $e');
      ShowSnackBar().showSnackBar(context, 'Lỗi khi gửi email');
    } finally {
      setState(() {
        _isLoading = false; // End loading state
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Card(
        elevation: 5,
        margin: const EdgeInsets.all(20),
        color: const Color.fromARGB(255, 46, 42, 42),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(children: [
            const SizedBox(height: 20),
            const Text(
              'Khuyến mãi kết thúc sau',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TimerContainer(
              remainingSeconds: widget.remainingSeconds,
              isCentered: true,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'ĐĂNG KÝ ĐẶT MUA NGAY',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.name,
                        controller: input1Controller,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                            hintText: 'Họ và tên',
                            hintStyle: TextStyle(color: Colors.black),
                            filled: true,
                            fillColor: Colors.white

                            // fillColor:
                            ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        controller: input2Controller,
                        decoration: const InputDecoration(
                            hintStyle: TextStyle(color: Colors.black),
                            hintText: 'Số điện thoại',
                            filled: true,
                            fillColor: Colors.white),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.streetAddress,
                        controller: input3Controller,
                        decoration: const InputDecoration(
                            hintStyle: TextStyle(color: Colors.black),
                            hintText: 'Địa chỉ',
                            filled: true,
                            fillColor: Colors.white),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: DropdownButton<String>(
                              hint: const Text(
                                'Chọn màu',
                                style: TextStyle(color: Colors.white),
                              ),
                              value: dropdown1Value,
                              onChanged: (value) {
                                setState(() {
                                  dropdown1Value = value!;
                                });
                              },
                              items: ['Màu nâu', 'Đen']
                                  .map((value) => DropdownMenuItem(
                                        value: value,
                                        child: Text(value),
                                      ))
                                  .toList(),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: DropdownButton<String>(
                              hint: const Text(
                                'Chọn kích thước',
                                style: TextStyle(color: Colors.white),
                              ),
                              value: dropdown2Value,
                              onChanged: (value) {
                                setState(() {
                                  dropdown2Value = value!;
                                });
                              },
                              items: List.generate(6, (index) => 38 + index)
                                  .map((size) => DropdownMenuItem(
                                        value: size.toString(),
                                        child: Text(size.toString()),
                                      ))
                                  .toList(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            AnimatedTextsButton(
                isLoading: _isLoading,
                intialText: 'MUA NGAY',
                onPress: _isLoading
                    ? null
                    : () {
                        _sendEmail();
                      })
          ]),
        ),
      ),
    );
  }
}
