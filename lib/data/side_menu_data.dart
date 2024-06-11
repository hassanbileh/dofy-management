import 'package:dofymanager/models/menu_model.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final menu = const <MenuModel>[
    MenuModel(icon: Icons.home, title: 'Dashbord'),
    MenuModel(icon: Icons.confirmation_num_rounded, title: 'Tickets'),
    MenuModel(icon: Icons.train_outlined, title: 'Trains'),
    MenuModel(icon: Icons.traffic_outlined, title: 'Stations'),
    MenuModel(icon: Icons.history, title: 'History'),
    MenuModel(icon: Icons.settings, title: 'Settings'),
    MenuModel(icon: Icons.person, title: 'Profile'),
    MenuModel(icon: Icons.logout, title: 'SignOut'),
  ];
}