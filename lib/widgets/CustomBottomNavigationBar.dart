import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final Widget child;
  final bool hasBottomBar;

  const CustomBottomNavigationBar({
    super.key,
    required this.child,
    this.hasBottomBar = true,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  final List<String> icons = [
    'assets/icons/play.png',
    'assets/icons/user.png',
    'assets/icons/settings.png',
  ];
  final List<String> paths = [
    '/',
    '/profile_screen',
    '/settings_screen',
  ];

  int _selected = 0;

  void _onTap(int index, String path) {
    setState(() {
      _selected = index;
      context.go(path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF24375C),
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                constraints: const BoxConstraints.expand(),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/background.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: widget.child,
              ),
            ),
            Visibility(
              visible: widget.hasBottomBar,
              child: Container(
                height: 80.h,
                padding: EdgeInsets.symmetric(horizontal: 50.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    icons.length,
                    (index) {
                      final icon = icons[index];
                      final path = paths[index];
                      return GestureDetector(
                        onTap: () => _onTap(index, path),
                        child: Opacity(
                          opacity: _selected == index ? 1 : 0.4,
                          child: Image.asset(
                            icon,
                            width: 24,
                            height: 24,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
