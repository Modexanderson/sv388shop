import 'package:flutter/material.dart';
import 'package:sv388shop/animated_shape.dart';

import 'animated_texts_button.dart';
import 'timer_container.dart';

class EightSection extends StatelessWidget {
  const EightSection({super.key});

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
            const TimerContainer(
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
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Input 1', filled: true,
                      // fillColor:
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Input 2',
                      filled: true,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Input 3',
                      filled: true,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          onChanged: (value) {},
                          decoration: const InputDecoration(
                            hintText: 'Dropdown 1',
                            filled: true,
                          ),
                          items: ['Option 1', 'Option 2', 'Option 3']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          onChanged: (value) {},
                          decoration: const InputDecoration(
                            hintText: 'Dropdown 2',
                            filled: true,
                          ),
                          items: ['Option A', 'Option B', 'Option C']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const AnimatedShape(
                child: AnimatedTextsButton(intialText: 'MUA NGAY'))
          ]),
        ),
      ),
    );
  }
}
