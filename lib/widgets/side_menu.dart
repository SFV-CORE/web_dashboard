import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/constants/controllers.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/helpers/responsivenees.dart';
import 'package:web_dashboard/routing/routes.dart';
import 'package:web_dashboard/widgets/custom_text.dart';
import 'package:web_dashboard/widgets/side_menu_item.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
        color: light,
        child: ListView(
          children: [
            if (ResponsiveWidget.isSmallScreen(context))
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Row(children: [
                    SizedBox(width: _width / 48),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 12,
                      ),
                      child: Image.asset('assets/icons/logo.png'),
                    ),
                    Flexible(
                      child: CustomText(
                          text: "Dash",
                          size: 20,
                          weight: FontWeight.bold,
                          color: active),
                    ),
                    SizedBox(
                      width: _width / 48,
                    ),
                  ]),
                ],
              ),
            const SizedBox(
              height: 40,
            ),
            Divider(
              color: lightGrey.withOpacity(.1),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: sideMenuItems
                  .map((itemName) => SideMenuItem(
                        itemName: itemName == AuthenticationPageRoute
                            ? "Log Out"
                            : itemName,
                        onTap: () {
                          if (itemName == AuthenticationPageRoute) {
                            //TODO:: goto Authentication Page
                          }

                          if (!menuController.isActive(itemName)) {
                            menuController.changeActiveItemTo(itemName);
                            if (ResponsiveWidget.isSmallScreen(context)) {
                              Get.back();
                              // TODO :: go to item name Route
                            }
                          }
                        },
                      ))
                  .toList(),
            )
          ],
        ));
  }
}
