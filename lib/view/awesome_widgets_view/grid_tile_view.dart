import 'package:flutter/material.dart';
import 'package:medium_article_11/resources/colors/app_colors.dart';

class GridTileView extends StatefulWidget {
  const GridTileView({Key? key}) : super(key: key);

  @override
  State<GridTileView> createState() => _GridTileViewState();
}

class _GridTileViewState extends State<GridTileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor, // scaffold background color
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.mainColor,
        centerTitle: true,
        title: const Text(
          'Flutter GridTile',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width / 2,
            child: GridTile(
              // header: const GridTileBar(
              //   backgroundColor: Colors.blueGrey,
              //   title: Text(
              //     "Product Title",
              //     textAlign: TextAlign.center,
              //   ),
              // ),
              child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    color: Colors.black12,
                  )),
              footer: GridTileBar(
                backgroundColor: Colors.blueGrey,
                leading: IconButton(
                  icon: const Icon(Icons.favorite),
                  color: Colors.white,
                  onPressed: () {},
                ),
                title: const Text(
                  "Title",
                  textAlign: TextAlign.center,
                ),
                trailing: IconButton(
                  icon: const Icon(
                    Icons.shopping_cart,
                  ),
                  onPressed: () {},
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
