import 'package:flutter/material.dart';
import '../widgets/custom_image_view.dart';
import 'models/meal_details_model.dart';
import 'widgets/bottom_navigation_bar_widget.dart';
import 'models/meal_suggestion_model.dart';
import 'widgets/meal_suggestion_card_widget.dart';
import '../../../core/app_export.dart';
import '../core/utils/vegetable_db_api_service.dart';

class MealInfoScreen extends StatefulWidget {
  final int mealId;
  final int initialTabIndex;
  final List<MealSuggestionModel>? relatedMealSuggestions;

  const MealInfoScreen({
    super.key,
    required this.mealId,
    this.initialTabIndex = 0,
    this.relatedMealSuggestions,
  });

  static Widget builder(BuildContext context) {
    final Object? args = ModalRoute.of(context)!.settings.arguments;

    if (args is Map<String, dynamic> && args.containsKey('mealId') && args['mealId'] is int) {
      final int mealId = args['mealId'] as int;
      final int tabIndex = args['tabIndex'] as int? ?? 0;
      final List<MealSuggestionModel>? relatedMeals = args['relatedMeals'] as List<MealSuggestionModel>?;

      return MealInfoScreen(
        mealId: mealId,
        initialTabIndex: tabIndex,
        relatedMealSuggestions: relatedMeals,
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Lỗi')),
      body: const Center(child: Text('Không thể tải thông tin món ăn. ID không hợp lệ hoặc thiếu.')),
    );
  }

  @override
  State<MealInfoScreen> createState() => _MealInfoScreenState();
}

class _MealInfoScreenState extends State<MealInfoScreen> {
  late Future<MealDetails> _mealDetailsFuture;
  final VegetableDbApiService _apiService = VegetableDbApiService();
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialTabIndex;
    _mealDetailsFuture = _apiService.fetchMealDetailedInfo(widget.mealId);
  }

  // Định nghĩa hàm _buildCardSection
  Widget _buildCardSection({
    required String title,
    required Widget content,
  }) {
    // Màu xanh lá cây nhạt phù hợp với background
    final Color cardBackgroundColor = const Color(0xFFF3FBF4);
    final colors = ThemeHelper().themeColor(); // Lấy theme colors

    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 8.h),
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: cardBackgroundColor,
        borderRadius: BorderRadius.circular(12.h),
        border: Border.all(color: Colors.white, width: 1.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18.fSize,
              fontWeight: FontWeight.bold,
              color: colors.blackCustom,
            ),
          ),
          SizedBox(height: 8.h),
          content,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final int currentIndex = _selectedIndex;
    final colors = ThemeHelper().themeColor();

    return Scaffold(
      appBar: AppBar(
        title: FutureBuilder<MealDetails>(
          future: _mealDetailsFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
              return Text(snapshot.data!.name, style: TextStyle(color: colors.blackCustom));
            }
            return Text('Chi tiết món ăn', style: TextStyle(color: colors.blackCustom));
          },
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: colors.blackCustom),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: FutureBuilder<MealDetails>(
              future: _mealDetailsFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  debugPrint('Error loading meal details: ${snapshot.error}');
                  return Center(child: Text('Lỗi tải thông tin món ăn: ${snapshot.error}', style: TextStyle(color: Colors.red)));
                } else if (snapshot.hasData) {
                  final MealDetails mealDetails = snapshot.data!;

                  final List<MealSuggestionModel> relatedMeals = (widget.relatedMealSuggestions ?? [])
                      .where((meal) => meal.id != mealDetails.id)
                      .toList();

                  return SingleChildScrollView(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // --- Hiển thị ảnh món ăn ---
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: CustomImageView(
                              imagePath: mealDetails.imagePath,
                              height: 250,
                              width: MediaQuery.of(context).size.width * 0.8,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        // --------------------------

                        // Mô tả
                        _buildCardSection(
                          title: 'Mô tả:',
                          content: Text(
                            mealDetails.description,
                            style: TextStyleHelper.instance.body16Regular.copyWith(color: colors.blackCustom),
                          ),
                        ),
                        const SizedBox(height: 8),

                        // Nguyên liệu
                        _buildCardSection(
                          title: 'Nguyên liệu:',
                          content: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: mealDetails.items.map((ingredient) {
                              String ingredientDisplay = '- ${ingredient.itemName}';
                              if (ingredient.quantity.isNotEmpty) {
                                ingredientDisplay += ' (${ingredient.quantity})';
                              }
                              if (ingredient.notes != null && ingredient.notes!.isNotEmpty) {
                                ingredientDisplay += ' - ${ingredient.notes}';
                              }
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 4.0),
                                child: Text(ingredientDisplay, style: TextStyleHelper.instance.body16Regular.copyWith(color: colors.blackCustom)),
                              );
                            }).toList(),
                          ),
                        ),
                        const SizedBox(height: 8),

                        // Cách làm
                        _buildCardSection(
                          title: 'Cách làm:',
                          content: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: mealDetails.instructions.asMap().entries.map((entry) {
                              int index = entry.key;
                              MealStep mealStep = entry.value;
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 4.0),
                                child: Text(
                                  '${index + 1}. ${mealStep.instructionText}',
                                  style: TextStyleHelper.instance.body16Regular.copyWith(color: colors.blackCustom),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        const SizedBox(height: 24),

                        // --- Phần Các món ăn liên quan ---
                        if (relatedMeals.isNotEmpty)
                          _buildCardSection(
                            title: 'Các món ăn liên quan:',
                            content: SizedBox(
                              height: 165.h,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemCount: relatedMeals.length,
                                separatorBuilder: (context, index) => SizedBox(width: 16.h),
                                itemBuilder: (context, index) {
                                  final relatedMeal = relatedMeals[index];
                                  return InkWell(
                                    onTap: () {
                                      debugPrint('Tapped on related meal suggestion from MealInfoScreen: ${relatedMeal.title}, ID: ${relatedMeal.id}');
                                      if (relatedMeal.id != null) {
                                        Navigator.pushReplacementNamed(
                                          context,
                                          AppRoutes.mealInfoScreen,
                                          arguments: {
                                            'mealId': relatedMeal.id,
                                            'tabIndex': currentIndex,
                                            'relatedMeals': widget.relatedMealSuggestions,
                                          },
                                        );
                                      } else {
                                        debugPrint('Error: Related Meal ID is null for meal: ${relatedMeal.title}');
                                        ScaffoldMessenger.of(context).showSnackBar(
                                          const SnackBar(content: Text('Không thể tải thông tin món ăn liên quan (ID bị thiếu).')),
                                        );
                                      }
                                    },
                                    child: SizedBox(
                                      width: 165.h,
                                      child: MealSuggestionCardWidget(
                                        mealSuggestion: relatedMeal,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                      ],
                    ),
                  );
                } else {
                  return const Center(child: Text('Không có dữ liệu món ăn.'));
                }
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(currentIndex: currentIndex),
    );
  }
}