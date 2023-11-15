import 'package:flutter/material.dart';

class FirstTask extends StatefulWidget {
  const FirstTask({super.key});

  @override
  State<FirstTask> createState() => _FirstTaskState();
}

class _FirstTaskState extends State<FirstTask> {
  @override
  Widget build(BuildContext context) {
    final sizeW = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          height: 130,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 120,
                color: Colors.transparent,
                padding: const EdgeInsets.all(16),
                child: Stack(children: [
                  Container(
                      color: const Color.fromARGB(205, 252, 205, 166),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              height: 22,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 255, 94, 0),
                                  // color: Color.fromARGB(255, 0, 255, 136),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4))),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 4,
                                    width: 4,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              205, 252, 205, 166),
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(2),
                                              bottomLeft: Radius.circular(2))),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    height: 4,
                                    width: 4,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              205, 252, 205, 166),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(2),
                                              bottomRight: Radius.circular(2))),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                              height: 40,
                              child: Text('40%',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 94, 0),
                                      fontSize: 42,
                                      fontWeight: FontWeight.w900))),
                          const SizedBox(
                              height: 21,
                              child: Text('+FREESHIP',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 94, 0),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800))),
                        ],
                      )),
                  Positioned(
                    top: 8,
                    left: 4,
                    child: Container(
                      color: Colors.red,
                      child: const Text(
                        'DELIVERY',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                  const Positioned(
                    right: 4,
                    child: Icon(
                      Icons.motorcycle,
                      color: Colors.green,
                      size: 28,
                    ),
                  ),
                ]),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 10,
                    width: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Expanded(
                    child: Stack(
                      children: <Widget>[
                        SizedBox(
                          width: 20,
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              return Flex(
                                direction: Axis.vertical,
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                    (constraints.constrainWidth() / 2.5)
                                        .floor(),
                                    (index) => SizedBox(
                                          height: 8,
                                          width: 8,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey
                                                    .shade200), //Color line between flight
                                          ),
                                        )),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  SizedBox(
                    height: 10,
                    width: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10))),
                    ),
                  ),
                ],
              ),
              Container(
                  width: sizeW - 150,
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _textcustom('Giảm 40% + FREESHIP Đơn từ 4 Ly', 3),
                      _textcustom('Hết hạn 30/11/2023', 1),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget _textcustom(String data, int maxline) {
    return Text(data,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400));
  }
}
