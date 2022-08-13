// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:kopiku/constants/constant.dart';
import 'package:kopiku/widgets/categories_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 900) {
          return WebHome();
        } else {
          return MobileHome();
        }
      },
    );
  }
}

class MobileHome extends StatelessWidget {
  const MobileHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 48, 24, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.coffee_rounded,
                              color: cream,
                              size: 36,
                            ),
                            const SizedBox(width: 16),
                            Text(
                              'Kopi',
                              style: bold.copyWith(
                                color: black,
                                fontSize: 24,
                              ),
                            ),
                            Text(
                              'Ku',
                              style: bold.copyWith(
                                color: cream,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            color: black,
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            width: 48,
                            height: 48,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/fathur.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Selamat Datang, ',
                              style: semiBold.copyWith(
                                color: darkgrey,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Fathoor',
                              style: semiBold.copyWith(
                                color: cream,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '!',
                              style: semiBold.copyWith(
                                color: darkgrey,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Ceriakan dan Warnai Hari\nBersama Kopi Terbaik Pilihanmu',
                      style: bold.copyWith(
                        color: black,
                        fontSize: 28,
                      ),
                    ),
                    const SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 48,
                            child: TextField(
                              cursorColor: black,
                              style: regular.copyWith(
                                color: black,
                              ),
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.search,
                                  color: grey,
                                ),
                                hintText: 'Cari',
                                hintStyle: const TextStyle(
                                  color: grey,
                                ),
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: grey,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: grey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.filter_list_rounded,
                            color: grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Categories',
                      style: bold.copyWith(
                        color: black,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const CategoriesWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class WebHome extends StatefulWidget {
  const WebHome({Key? key}) : super(key: key);

  @override
  State<WebHome> createState() => _WebHomeState();
}

class _WebHomeState extends State<WebHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('A'),
    );
  }
}
