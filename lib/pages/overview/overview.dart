// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:web_dashboard/constants/controllers.dart';
import 'package:web_dashboard/helpers/responsivenees.dart';
import 'package:web_dashboard/pages/overview/widget/overview_cards_large.dart';
import 'package:web_dashboard/pages/overview/widget/overview_cards_medium.dart';
import 'package:web_dashboard/pages/overview/widget/overview_cards_small.dart';
import 'package:web_dashboard/pages/overview/widget/revenue_section_large.dart';
import 'package:web_dashboard/pages/overview/widget/revenue_section_small.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

import 'widget/avaliable_drivers.dart';

class OverViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: ResponsiveWidget.isSmallScreen(context) ? 56 : 26),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: CustomText(
                    text: menuController.activeItem.value,
                    size: 24,
                    weight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(children: [
            //*Cards
            if (ResponsiveWidget.isLargeScreen(context) ||
                ResponsiveWidget.isMediumScreen(context))
              if (ResponsiveWidget.isCustomSize(context))
                OverviewCardsMediumScreen()
              else
                const OverViewCardsLargeScreen()
            else
              OverviewCardsSmallScreen(),
            // *Grafico
            if (!ResponsiveWidget.isSmallScreen(context))
              const RevenueSectionLarge()
            else
              const RevenueSectionSmall(),
            //*Tabela
            AvaliableDrivers(),
          ]),
        ),
      ],
    );
  }
}
