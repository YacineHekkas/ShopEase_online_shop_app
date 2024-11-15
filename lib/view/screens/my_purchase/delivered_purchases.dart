import 'package:flutter/material.dart';
import 'package:shopease_ecom_app/models/product_model.dart';
import 'package:shopease_ecom_app/view/screens/my_purchase/components/my_purchase_card.dart';

import '../../../data/const/constants.dart';


class DeliveredPurchases extends StatelessWidget {
  const DeliveredPurchases({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, i) {
        return MyPurchaseCard(
          product: dummyProductList[i],
        );
      },
      separatorBuilder: (ctx, i) => SizedBox(height: AppSpacing.twentyVertical),
      itemCount: dummyProductList.length - 2,
    );
  }
}
