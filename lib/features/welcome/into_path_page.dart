import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import 'package:shopping_list/core/consts.dart';
import 'package:shopping_list/core/go%20router/consts.dart';
import 'package:shopping_list/features/welcome/into%20pages/into_page1.dart';
import 'package:shopping_list/features/welcome/into%20pages/into_page2.dart';
import 'package:shopping_list/features/welcome/into%20pages/into_page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntoPathPage extends StatefulWidget {
  const IntoPathPage({super.key});

  @override
  State<IntoPathPage> createState() => _IntoPathPageState();
}

class _IntoPathPageState extends State<IntoPathPage> {
  PageController _controller = PageController();

  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              onPageChanged: (value) {
                setState(() {
                  pageIndex = value;
                });
              },
              children: const [
                IntoPage1(),
                IntoPage2(),
                IntoPage3(),
              ],
            ),
            Container(
                alignment: const Alignment(0, 0.7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          pageIndex != 0
                              ? ElevatedButton(
                                  onPressed: () => _controller.previousPage(
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.easeIn),
                                  child: Text('into_btn_prev'.tr()))
                              : Text(''),
                        ],
                      ),
                    ),
                    SmoothPageIndicator(controller: _controller, count: 3),
                    Container(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          pageIndex != 2
                              ? ElevatedButton(
                                  onPressed: () => _controller.nextPage(
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.easeIn),
                                  child: Text('into_btn_next'.tr()))
                              : ElevatedButton(
                                  onPressed: () {
                                    var hiveBox = Hive.box(Consts.HIVE_BOX);
                                    hiveBox.put(
                                        HiveConsts.introductionPath, 'true');

                                    context.go(HOME_R);
                                  },
                                  child: Text('into_btn_done'.tr())),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
