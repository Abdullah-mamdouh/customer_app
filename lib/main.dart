import 'package:flutter/material.dart';
import 'package:foodio/screens/authentication_sreen/login_page.dart';
import 'package:foodio/screens/authentication_sreen/onboarding_page.dart';
import 'package:foodio/screens/authentication_sreen/singup_page.dart';
import 'package:foodio/screens/card_screen/card_page.dart';
import 'package:foodio/screens/favoirite_screen/favorite_page.dart';
import 'package:foodio/screens/home_screen/home_page.dart';
import 'package:foodio/screens/orders_screen/orders_page.dart';
import 'package:foodio/screens/profile_screen/profile_page.dart';
import 'package:foodio/screens/resturant_screen/Cuisines_page.dart';
import 'package:foodio/screens/resturant_screen/resturant_page.dart';
import 'package:foodio/screens/search_screen/search_page.dart';
import 'package:foodio/screens/wallet_screen/wallet_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodio/utils/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      //   MaterialApp(
      //   title: 'Flutter Demo',
      //   debugShowCheckedModeBanner: false,
      //   theme: ThemeData(
      //     primarySwatch: Colors.blue,
      //   ),
      //   home: HomePage()
      // );
      ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context , child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            /*routes:  {
            Routes.home: (context) => HomePage(),
            Routes.order: (context) => OrdersPage(),
            Routes.card: (context) => CardPage(),
            Routes.cuisines: (context) => CuisinesPage(),
            Routes.wallet: (context) => WalletPage(),
            Routes.profile: (context) => ProfilePage(),
            Routes.favorite: (context) => FavoritePage(),
            Routes.search: (context) => SearchPage(),
          },*/
            onGenerateRoute: AppRouter.generateRoutes,
            // You can use the library anywhere in the app even in theme
            theme: ThemeData(
              primarySwatch: Colors.blue,
              // textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home: child,
          );
        },
        // child:  OnBoarding(),
      );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
//
// class MainPage extends StatefulWidget {
//   @override
//   _MainPageState createState() => _MainPageState();
// }
//
// class _MainPageState extends State<MainPage> {
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     NavigationItem _navigationItem = NavigationItem.home;
//
//     NavigationItem get navigationItem => _navigationItem;
//
//     void setNavigationItem(NavigationItem navigationItem) {
//       _navigationItem = navigationItem;
//     }
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) => buildPages();
//
//   Widget buildPages() {
//
//     switch (NavigationItem navigationItem) {
//       case NavigationItem.home:
//         return HomePage();
//       case NavigationItem.order:
//         return OrdersPage();
//       case NavigationItem.card:
//         return CardPage();
//     }
//   }
// }
//
//
// enum NavigationItem {
//   home,
//   order,
//   card
// }