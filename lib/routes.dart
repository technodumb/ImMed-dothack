import 'package:flutter/material.dart';
import 'package:immed_dothack/ProfileHome/profile_home.dart';
import 'EmergencyScreen/emergency.dart';
import 'FullCheckUpScreen/full_check_up_screen.dart';
import 'HealthDataScreen/health_data_screen.dart';
import 'PartialCheckUpScreen/partial_checkup_screen.dart';
import 'ProfileSwitcher/profile_switcher.dart';

var pageRoutes = <String, Widget Function(BuildContext)>{
  '/profile_switcher': (BuildContext context) => const ProfileSwitcher(),
  '/profile_home': (BuildContext context) => const ProfileHome(),
  '/show_health': (BuildContext context) => const HealthDataScreen(),
  '/full_check_up': (BuildContext context) => const FullCheckUpScreen(),
  '/partial_check_up': (BuildContext context) => const PartialCheckUpScreen(),
  '/emergency_screen': (BuildContext context) => const EmergencyScreen(),
};
