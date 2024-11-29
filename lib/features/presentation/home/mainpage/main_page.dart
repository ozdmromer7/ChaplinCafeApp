import 'package:chaplin_cafe_app/config/routes/navigator_manager.dart';
import 'package:chaplin_cafe_app/config/routes/route_name.dart';
import 'package:chaplin_cafe_app/features/components/custom_app_bar.dart';
import 'package:chaplin_cafe_app/features/presentation/home/branch_page/branch_page.dart';
import 'package:chaplin_cafe_app/features/presentation/home/home_page/home_page.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<StatelessWidget> pageList = [
    const HomePage(),
    const HomePage(),
    HomePage(),
    BranchesScreen()
  ];
  int pageIx = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: CustomAppBar(
              automaticallyImplyLeading: false,
              appBarTitle: 'Chaplin Coffee',
              leading: Icon(Icons.menu),
              actionWidget: Icon(Icons.qr_code),
            )),
        extendBody: true,
        floatingActionButton: FloatingActionButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            backgroundColor: Colors.black,
            onPressed: () {
              NavigatorManager.instance
                  .pushNamedToWidget(routeName: RouteName.qrScanner);
            },
            child: ClipOval(
              child: Image.asset('assets/images/chaplin_logo.jpeg',
                  fit: BoxFit.cover),
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        bottomNavigationBar: SizedBox(
            height: size.height * 0.12,
            child: BottomAppBar(
              elevation: 20,
              notchMargin: 8,
              shape: const CircularNotchedRectangle(),
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      FittedBox(
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    pageIx = 0;
                                  });
                                },
                                icon: Icon(Icons.home,
                                    color: pageIx == 0
                                        ? Colors.red
                                        : Colors.black)),
                            Text(
                              'AnaSayfa',
                              style: const TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      FittedBox(
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    pageIx = 1;
                                  });
                                },
                                icon: Icon(Icons.home,
                                    color: pageIx == 1
                                        ? Colors.red
                                        : Colors.black)),
                            Text(
                              'Menü',
                              style: const TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      FittedBox(
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    pageIx = 2;
                                  });
                                },
                                icon: Icon(Icons.drag_handle,
                                    color: pageIx == 2
                                        ? Colors.red
                                        : Colors.black)),
                            Text('Bildirimler',
                                style: const TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54)),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      FittedBox(
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    pageIx = 3;
                                  });
                                },
                                icon: Icon(Icons.store,
                                    color: pageIx == 3
                                        ? Colors.red
                                        : Colors.black)),
                            Text('Branches',
                                style: const TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54)),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )),
        body: pageList[pageIx],
      ),
    );
  }
}
