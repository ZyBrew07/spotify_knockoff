import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/application/usecase/more_categories/more_categories_bloc.dart';
import 'package:flutter_application_1/src/domain/model/categories/category_list_model.dart';
import 'package:flutter_application_1/src/domain/model/categories/category_list_wrapper.dart';
import 'package:flutter_application_1/src/presentation/screen/components/category_tile.dart';
import 'package:flutter_application_1/src/application/config/di/di.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoreCategories extends StatelessWidget {
  const MoreCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.black,
          leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ), //AppBar
        body: BlocProvider(
      create: (context) => dependencyLocator<MoreCategoriesBloc>()
        ..add(const MoreCategoriesEvent.initialize()),
      child: BlocBuilder<MoreCategoriesBloc, MoreCategoriesState>(
        builder: (context, state) {
          CategoryListWrapper? categoryListWrapper = state.categories;
          CategoryListModel? categoryList = categoryListWrapper?.categories;

          int categoryListSize =
              (categoryList != null ? categoryList.items.length : 0);

          var size = MediaQuery.of(context).size;

          final double itemHeight = (size.height - kToolbarHeight - 27) / 2;
          final double itemWidth = size.width / 2;

          return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: (itemWidth / itemHeight),
              ),
              itemCount: categoryListSize,
              itemBuilder: (_, index) => buildCategoryTile(categoryList!.items[index],
                        onCategoryClicked: (categoryId) {}),
                  );
        },
      ),
    ));
  }
}
