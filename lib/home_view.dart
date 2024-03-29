import 'package:flutter/material.dart';
import 'package:lab_mid/accounts_page.dart';
import 'package:lab_mid/favourites.dart';
import 'package:lab_mid/resources/color_manager.dart';
import 'package:lab_mid/resources/styles_manager.dart';
import 'package:lab_mid/resources/values_manager.dart';
import 'package:lab_mid/search_page.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import 'cart_view.dart';
import 'home_page.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  late AnimationController localAnimationController;

  static bool checker = false;

  @override
  void initState() {
    super.initState();
  }

  int _currIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const Cart(),
    const FavouritesPage(),
    const AccountPage(),
  ];

  final List<String> _titles = const ["Home", "Cart", "Favourites", "Account"];

  @override
  Widget build(BuildContext context) {
    //_showSnackBar(context, "Welcome Sana! to your store", () { });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Shop Easy",
            style: getBoldStyle(
              color: Colors.white,
              fontSize: 40,
            ),
          ),
        ),
      ),
      body: pages[_currIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: ColorManager.lightGrey,
              spreadRadius: AppSize.size2,
              blurRadius: AppSize.size18),
        ]),
        child: Theme(
          data: Theme.of(context).copyWith(canvasColor: ColorManager.white),
          child: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                ),
                label: "Cart",
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_border,
                    size: 30,
                  ),
                  label: "Favourites"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_box,
                    size: 30,
                  ),
                  label: "Account"),
            ],
            selectedItemColor: Colors.blue[400],
            unselectedItemColor: ColorManager.grey,
            currentIndex: _currIndex,
            onTap: onTap,
          ),
        ),
      ),
    );
  }

  onTap(int index) {
    setState(() {
      _currIndex = index;
    });
  }

  void _showSnackBar(
      BuildContext buildContext, String message, void Function() onTap) {
    showTopSnackBar(
      Overlay.of(context),
      GestureDetector(
        onTap: () {
          onTap();
        },
        child: CustomSnackBar.info(
          icon: Icon(
            Icons.account_box,
            size: 60,
            color: ColorManager.whiteOpacity40,
          ),
          message: "Welcome to your store",
          textStyle: getSemiBoldStyle(
            color: ColorManager.white,
            fontSize: 20,
          ),
          backgroundColor: ColorManager.primary,
        ),
      ),
      displayDuration: const Duration(milliseconds: 5),
      dismissDirection: [DismissDirection.endToStart],
      dismissType: DismissType.onSwipe,
      onAnimationControllerInit: (controller) {
        localAnimationController = controller;
      },
    );
  }
}
