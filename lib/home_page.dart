// ignore_for_file: library_private_types_in_public_api, avoid_print

import 'package:flutter/material.dart';
import 'package:website_soa/constants.dart';
import 'package:website_soa/utilities/responsive.dart';
import 'package:website_soa/widgets/casestudy_widget.dart';
import 'package:website_soa/widgets/features_widget.dart';
import 'package:website_soa/widgets/home_widget.dart';
import 'package:website_soa/widgets/links_widget.dart';
import 'package:website_soa/widgets/testimonials_widget.dart';
import 'package:website_soa/widgets/whoarewe_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedIndex = 0;
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();

  bool isSearching = false; // Controls search bar visibility

  // Define Global Keys for Sections
  final GlobalKey homeKey = GlobalKey();
  final GlobalKey whoUsKey = GlobalKey();
  final GlobalKey featuresKey = GlobalKey();
  final GlobalKey caseStudyKey = GlobalKey();
  final GlobalKey testimonialsKey = GlobalKey();
  final GlobalKey linksKey = GlobalKey();

  // Correctly map tab names to section keys
  late final List<Map<String, dynamic>> tabs;
  late final Map<String, GlobalKey> sectionMap;

  @override
  void initState() {
    super.initState();

    sectionMap = {
      "home": homeKey,
      "who": whoUsKey,
      "features": featuresKey,
      "case": caseStudyKey,
      "testimonials": testimonialsKey,
      "links": linksKey,
    };

    tabs = [
      {'title': 'Home', 'key': homeKey},
      {'title': 'Who are we', 'key': whoUsKey},
      {'title': 'Features', 'key': featuresKey},
      {'title': 'Case study', 'key': caseStudyKey},
      {'title': 'Testimonials', 'key': testimonialsKey},
      {'title': 'Links', 'key': linksKey},
    ];

    _searchController.addListener(() {
      onSearchChanged(_searchController.text);
    });
  }

  // List of sections
  final List<String> sections = [
    "Home",
    "Who are we",
    "Features",
    "Case study",
    "Testimonials",
    "Links",
    "Contact",
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void scrollToSection(GlobalKey? sectionKey) {
    if (sectionKey == null) return;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final context = sectionKey.currentContext;
      if (context != null) {
        Scrollable.ensureVisible(
          context,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  void onSearchChanged(String input) {
    if (input.isNotEmpty) {
      String searchKey = input.toLowerCase();
      for (var entry in sectionMap.entries) {
        if (entry.key.contains(searchKey)) {
          scrollToSection(entry.value);
          break; // Scroll to the first match
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      appBar: Responsive.isDesktop(context)
          ? AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: isSearching ? _buildSearchBar() : _buildNavBar(),
            )
          : AppBar(
              toolbarHeight: deviceSize.height * 0.1,
              backgroundColor: Colors.white,
              elevation: 0,
              leading: IconButton(
                icon: Icon(Icons.menu, color: Colors.red, size: 35),
                onPressed: () {
                  _scaffoldKey.currentState?.openDrawer(); // Open the Drawer
                  // Add Drawer or Navigation functionality here
                  print("Menu clicked");
                },
              ),
              title: Image.asset(
                'assets/images/soa-code.png',
                height: 40,
              ),
            ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
              child: Center(
                child:
                    Image.asset('assets/images/soa-code-white.png', height: 50),
              ),
            ),
            ListTile(
              title: Text(
                'Home',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context); // Close Drawer
                scrollToSection(homeKey); // Scroll to Home section
              },
            ),
            ListTile(
              title: Text(
                'Who are we',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
                scrollToSection(whoUsKey); // Scroll to Who are we section
              },
            ),
            ListTile(
              title: Text(
                'Features',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
                scrollToSection(featuresKey); // Scroll to Features section
              },
            ),
            ListTile(
              title: Text(
                'Case study',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
                scrollToSection(caseStudyKey); // Scroll to Case study section
              },
            ),
            ListTile(
              title: Text(
                'Testimonials',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
                scrollToSection(
                    testimonialsKey); // Scroll to Testimonials section
              },
            ),
            ListTile(
              title: Text(
                'Links',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
                scrollToSection(linksKey); // Scroll to Links section
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            _buildSection(homeKey, HomeWidget(deviceSize: deviceSize)),
            _buildSection(whoUsKey, WhoAreWeWidget(deviceSize: deviceSize)),
            _buildSection(featuresKey, FeaturesWidget(deviceSize: deviceSize)),
            _buildSection(
                caseStudyKey, CaseStudyWidget(deviceSize: deviceSize)),
            _buildSection(
                testimonialsKey, TestimonialsWidget(deviceSize: deviceSize)),
            _buildSection(linksKey, LinksWidget(deviceSize: deviceSize)),
          ],
        ),
      ),
    );
  }

  /// 🔹 Nav Bar (Tabs + Search Button)
  Widget _buildNavBar() {
    return Row(
      children: [
        Image.asset('assets/images/soa-code.png', height: 50),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(tabs.length, (index) {
            return _buildTab(
              tabs[index]['title'], // ✅ Pass correct title
              index, // ✅ Pass correct index
              tabs[index]['key'],
            );
          }),
        ),
        const SizedBox(width: 15),
        InkWell(
          onTap: () {
            setState(() {
              isSearching = true;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            color: kPrimaryColor,
            child: IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {
                setState(() {
                  isSearching = true;
                });
              },
            ),
          ),
        ),
      ],
    );
  }

  /// 🔹 Search Bar (With Logo)
  Widget _buildSearchBar() {
    return Row(
      children: [
        Image.asset(
          'assets/images/soa-code.png',
          height: 50,
        ), // Logo always visible
        SizedBox(width: MediaQuery.of(context).size.width * 0.25),
        Expanded(
          child: TextField(
            controller: _searchController,
            autofocus: true,
            decoration: InputDecoration(
              hintText: "Search...",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7), // Rounded corners
                borderSide:
                    BorderSide(color: Colors.grey), // Default border color
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7), // Rounded corners
                borderSide: BorderSide(
                    color: kPrimaryColor,
                    width: 2), // 🔴 Change focus border color
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7), // Rounded corners
                borderSide: BorderSide(
                    color:
                        Colors.grey), // Default border color when not focused
              ),
            ),
            textInputAction: TextInputAction.search,
          ),
        ),
        const SizedBox(width: 15),
        IconButton(
          icon: Icon(Icons.close, color: Colors.black),
          onPressed: () {
            setState(() {
              isSearching = false;
              _searchController.clear();
            });
          },
        ),
      ],
    );
  }

  /// 🔹 Build Tabs (Clickable to Scroll)
  Widget _buildTab(String title, int index, GlobalKey? sectionKey) {
    bool isActive = selectedIndex == index;
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });

        if (sectionKey != null) {
          scrollToSection(sectionKey);
        }
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: isActive ? Colors.black : Colors.transparent, width: 2),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Text(
          title,
          style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  /// 🔹 Build Section with GlobalKey
  Widget _buildSection(GlobalKey key, Widget widget) {
    return Container(
      key: key,
      child: widget,
    );
  }
}
