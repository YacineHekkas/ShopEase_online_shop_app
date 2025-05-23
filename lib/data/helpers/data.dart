import 'package:flutter/material.dart';
import 'package:shopease_ecom_app/data/const/app_colors.dart';
import 'package:shopease_ecom_app/models/product_model.dart';


List<String> furnitureList = [
  'Dining Table',
  'Working Table',
  'Chairs',
  'Coffee Table',
  'TV Stand',
  'Console Table',
  'Wardrobes',
  'Streamers',
  'Sofa',
  'Side Table',
];



List<String> lastSearch = [
  'Gain Sofa',
  'Bed',
  'Table',
  'Chair Lotina',
];

List<int> starRating = [1, 2, 3, 4, 5];

List<String> categories = [
  'Chairs',
  'Sofa',
  'Dinning Room',
  'Dinning Room',
  'Sofa Bed',
  'Others',
];

List<Color> availableColor = [
  AppColors.kError,
  AppColors.kWarning,
  AppColors.kSuccess,
  AppColors.kGrey60,
  AppColors.kPrimary,
];

List<String> suggestedLanguages = [
  'English (UK)',
  'English',
];

List<String> otherLanguages = [
  'Spanish',
  'French',
  'German',
  'Chinese',
  'Japanese',
  'Arabic',
  'Russian'

];

String dummyTextDescription =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames.';

//
List<ProductModel> favorite = [];