import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shopease_ecom_app/view/screens/auth/components/auth_field.dart';
import 'package:shopease_ecom_app/view/screens/checkout/components/location_card.dart';
import 'package:shopease_ecom_app/view/screens/checkout/payment_view.dart';
import 'package:shopease_ecom_app/view/screens/widgets/buttons/primary_button.dart';
import 'package:shopease_ecom_app/view/screens/widgets/textfields/search_field.dart';
import '../../../../data/const/constants.dart';


class AddressView extends StatefulWidget {
  const AddressView({super.key});

  @override
  State<AddressView> createState() => _AddressViewState();
}

class _AddressViewState extends State<AddressView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _locationSearchController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Address',
          style: AppTypography.kSemiBold16.copyWith(color: AppColors.kGrey100),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 24.w,
          vertical: AppSpacing.twentyVertical,
        ),
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AuthField(
                controller: _nameController,
                hintText: 'Enter you name',
                title: 'Your Name',
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter your name';
                  }
                  return null;
                },
              ),
              SizedBox(height: AppSpacing.fifteenVertical),
              AuthField(
                controller: _phoneController,
                hintText: '+92 334137345',
                title: 'Your Phone',
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter your phone number';
                  }
                  return null;
                },
              ),
              SizedBox(height: AppSpacing.fifteenVertical),
              AuthField(
                controller: _addressController,
                hintText: 'Enter your address',
                title: 'Your Address',
                maxLines: 6,
                keyboardType: TextInputType.streetAddress,
                textInputAction: TextInputAction.done,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter your address';
                  }
                  return null;
                },
              ),
              SizedBox(height: AppSpacing.twentyVertical),
              Text('Select Location', style: AppTypography.kSemiBold16),
              SizedBox(height: AppSpacing.fifteenVertical),
              SearchField(
                controller: _locationSearchController,
                hintText: 'Search Location',
                isFilterIcon: false,
                filterCallback: () {},
              ),
              SizedBox(height: AppSpacing.fifteenVertical),
              const LocationCard(),
              SizedBox(height: AppSpacing.twentyVertical),
              PrimaryButton(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    Get.to<Widget>(() => const PaymentView());
                  }
                },
                text: 'Confirm',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
