import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kakaobank_clone_practice/blocs/home/home_cubit.dart';
import 'package:kakaobank_clone_practice/presentation/catalog/components/catalog_account_card.dart';
import 'package:kakaobank_clone_practice/presentation/catalog/components/catalog_ad_card.dart';
import 'package:kakaobank_clone_practice/presentation/catalog/components/catalog_alliance_card.dart';
import 'package:kakaobank_clone_practice/presentation/main/main_page.dart';
// import 'package:kakaobank_clone_practice/presentation/more/';
// import 'package:kakaobank_clone_practice/presentation/notification/';

class HomePage extends StatelessWidget {
  bool shouldPop = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, int>(
      builder: (_, state){
        return WillPopScope(
          onWillPop: () async { return shouldPop; },
          child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              onTap: (index) {
                _changeBottomNav(_, index);
              },
              currentIndex: state,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                    ),
                  label: "",
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.apps,
                ),
                  label: "",
                ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.apps,
                    ),
                    label: "",
                  ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.more_horiz,
                    ),
                  label: "",
                ),
              ],
            ),
            body: _buildBody(state),
          ),
          // onWillPop: ()  async {  },/**/
        );
      },
    );
  }

  void _changeBottomNav(BuildContext context, int index) {
    switch(index) {
      case 0:
        context.read<HomeCubit>().getMain();
        break;
      case 1:
        context.read<HomeCubit>().getCatalog();
        break;
      case 2:
        context.read<HomeCubit>().getNotification();
        break;
      case 3:
        context.read<HomeCubit>().getMore();
        break;
    }
  }
  Widget _buildBody(dynamic index) {

      switch(index) {
      case 0:
      return MainPage();
      case 1:
      return CatalogPage();
      case 2:
      return NotificationPage();
      case 3:
      return MorePage();
    }
  }
}
