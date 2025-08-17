import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_app/presentation/resources/assets_manager.dart';
import 'package:new_app/presentation/resources/colors_manager.dart';
import 'package:new_app/presentation/resources/routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;
  _startDelay() {
    _timer = Timer(Duration(seconds: 2), _onBoardingNavigation);
  }

  _onBoardingNavigation() {
    Navigator.pushReplacementNamed(context, Routes.onBoardingViewRoute);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(child: Image.asset(ImagesAssets.splashLogo)),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
