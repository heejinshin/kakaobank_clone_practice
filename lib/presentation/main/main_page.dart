// 계좌 정보를 확인할 수 있는 메인페이지
import 'package:flutter/material.dart';
import 'package:kakaobank_clone_practice/presentation/main/components/checking_account_card.dart';
import 'package:kakaobank_clone_practice/presentation/main/components/main_ad_card.dart';
import 'package:kakaobank_clone_practice/presentation/main/components/main_app_bar.dart';
import 'package:kakaobank_clone_practice/presentation/main/components/more_button.dart';
import 'package:kakaobank_clone_practice/presentation/main/components/savings.account_card.dart';

class MainPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff343B57),
      body: SafeArea(
        child: Container(
          alignment: Alignment.topCenter,
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            constraints: BoxConstraints(
              maxWidth: 632,
            ),
            child: CustomScrollView(   // SliverList 아이템을 스크롤해도 SliverAppBar를 상단에 고정하는 목적으로 사용한다.
              key: PageStorageKey<String>("main"),  // 다른 화면으로 이동했다가 돌아왔을때 현재 화면의 스크롤 위치를 유지시킴
              slivers: [
                SliverAppBar(
                  titleSpacing: 10,
                  // title: MainAppBar(),
                  backgroundColor: Color(0xff343B57),
                  pinned: true,
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    SizedBox(height: 20),
                    MainAdCard(
                      title: "Puzzleleaf Youtube",
                      content: "If you want to see the FLutter video!",
                    ),
                    SizedBox(height: 15),
                    CheckingAccountCard(),
                    SizedBox(height: 15),
                    SavingAccountCard(
                      color: Color(0xffF1A8AF), key: ValueKey<String>('sd'),

                    ),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
