import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Map> transactionData = [
  {
    'icon': const FaIcon(
      FontAwesomeIcons.burger,
      color: Colors.white,
    ),
    'color': Colors.yellow.shade700,
    'name': 'Food',
    'totalAmount': '\$45.00',
    'date': 'Today'
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.shoppingBag, color: Colors.white),
    'color': Colors.blue.shade700,
    'name': 'Shopping',
    'totalAmount': '\$120.00',
    'date': 'Yesterday'
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.train, color: Colors.white),
    'color': Colors.green.shade700,
    'name': 'Transport',
    'totalAmount': '\$15.00',
    'date': '2 days ago'
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.hospital, color: Colors.white),
    'color': Colors.red.shade400,
    'name': 'Healthcare',
    'totalAmount': '\$200.00',
    'date': '3 days ago'
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.film, color: Colors.white),
    'color': Colors.purple.shade700,
    'name': 'Entertainment',
    'totalAmount': '\$60.00',
    'date': 'Last week'
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.bolt, color: Colors.white),
    'color': Colors.orange.shade700,
    'name': 'Utilities',
    'totalAmount': '\$75.00',
    'date': 'Last month'
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.gasPump, color: Colors.white),
    'color': Colors.teal.shade700,
    'name': 'Fuel',
    'totalAmount': '\$50.00',
    'date': '2 weeks ago'
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.book, color: Colors.white),
    'color': Colors.brown.shade700,
    'name': 'Education',
    'totalAmount': '\$150.00',
    'date': '3 weeks ago'
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.plane, color: Colors.white),
    'color': Colors.indigo.shade700,
    'name': 'Travel',
    'totalAmount': '\$300.00',
    'date': 'Last month'
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.spa, color: Colors.white),
    'color': Colors.pink.shade400,
    'name': 'Personal Care',
    'totalAmount': '\$80.00',
    'date': 'Yesterday'
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.houseUser, color: Colors.white),
    'color': Colors.grey.shade700,
    'name': 'Rent',
    'totalAmount': '\$800.00',
    'date': 'This month'
  }
];
