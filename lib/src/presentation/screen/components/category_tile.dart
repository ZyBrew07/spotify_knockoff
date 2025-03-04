import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/application/config/gen/assets.gen.dart';
import 'package:flutter_application_1/src/domain/model/categories/category_list_model.dart';
import 'package:flutter_application_1/src/domain/model/categories/category_model.dart';
import 'package:flutter_application_1/src/presentation/screen/dashboard.dart';

extension CategoryTile on Dashboard {
  Widget buildCategoryTileList(
      {required CategoryListModel? categoryList,
      required Function() showAll,
      required Function(String categoryId) onCategoryClicked}) {
    int categoryListSize =
        (categoryList != null ? categoryList.items.length: 0);

    return Column(children: [
      Container(
        margin: const EdgeInsets.only(left: 8.0, top: 0.0, right: 16.0),
        height: 50,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                margin: const EdgeInsets.only(left: 8.0, top: 8.0),
                height: 50,
                width: 150,
                child: const Text("Categories",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                margin: const EdgeInsets.only(left: 8.0, top: 8.0),
                height: 50,
                width: 150,
                child: GestureDetector(
                    onTap: () {
                      showAll();
                    },
                    child: const Text("Show All",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ))),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
          height: 350,
          child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: categoryListSize,
              itemBuilder: (context, index) => Container(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: SizedBox(
                      width: 250,
                      height: 330,
                      child: ListView(
                        children: <Widget>[
                          buildCategoryTile(categoryList!.items[index],
                              onCategoryClicked: (categoryId) {
                            onCategoryClicked(categoryId);
                          })
                        ],
                      ),
                    ),
                  ),
              separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  )))
    ]);
  }
}

Widget buildCategoryTile(CategoryModel category,
    {required Function(String categoryId) onCategoryClicked}) {
  return GestureDetector(
    onTap: () {
      onCategoryClicked(category.id);
    },
    child: Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: SizedBox(
            width: 250,
            height: 330,
            child: Column(
              children: [
                Container(
                  height: 80,
                  width: double.infinity,
                  color: Colors.white,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Center(
                        child: Text(category.name,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          margin: const EdgeInsets.only(left: 8.0, top: 8.0),
                          height: 20,
                          width: 20,
                          child: Assets.images.spotifyGray.image()
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 250,
                    width: double.infinity,
                    color: Colors.green,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.cover,
                        alignment: FractionalOffset.center,
                        image: NetworkImage(category.icons[0].url),
                      )),
                    )),
              ],
            ))),
  );
}
