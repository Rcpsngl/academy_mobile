import 'package:flutter/material.dart';

const kprimaryColor = Color(0xff212C42);
const ksecondryColor = Color(0xff9CA2FF);
const ksecondryLightColor = Color(0xffEDEFFE);
const klightContentColor = Color(0xffF1F2F7);

const double kbigFontSize = 25;
const double knormalFontSize = 18;
const double ksmallFontSize = 15;

//colors

const Color kTextBlackColor = Color(0xFF313131);
const Color kTextWhiteColor = Color(0xFFFFFFFF);
const Color kContainerColor = Color(0xFF777777);
const Color kOtherColor = Color(0xFFF4F6F7);
const Color kTextLightColor = Color(0xFFA5A5A5);
const Color kErrorBorderColor = Color(0xFFE74C3C);
const kDarkPrimaryColor = Color(0xFF212121);
const kDarkSecondaryColor = Color(0xFF373737);
const kLightPrimaryColor = Color(0xFFFFFFFF);
const kLightSecondaryColor = Color(0xFFF3F7FB);
const kAccentColor = Color(0xFFFFC107);

const kPrimaryColor = Color(0xFFFF8084);
const kWhiteColor = Color(0xFFFFFFFF);
const kLightColor = Color(0xFF808080);
const kDarkColor = Color(0xFF303030);
const kTransparent = Colors.transparent;

const kDefaultPadding = 24.0;
const kLessPadding = 10.0;
const kFixPadding = 16.0;
const kLess = 4.0;

const kShape = 30.0;

const kRadius = 0.0;
const kAppBarHeight = 56.0;

const kHeadTextStyle = TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
);

const kSubTextStyle = TextStyle(
  fontSize: 18.0,
  color: kLightColor,
);

const kTitleTextStyle = TextStyle(
  fontSize: 20.0,
  color: kPrimaryColor,
);

const kDarkTextStyle = TextStyle(
  fontSize: 20.0,
  color: kDarkColor,
);

const kDivider = Divider(
  color: kAccentColor,
  thickness: kLessPadding,
);

const kSmallDivider = Divider(
  color: kAccentColor,
  thickness: 5.0,
);

const String pieChart = 'assets/images/pieChart.png';
const String trophy = 'assets/images/trophy.png';
const String chat = 'assets/images/chat.png';
const String whiteShape = 'assets/images/whitebg.svg';
const String logo = 'assets/images/shoppingBag.png';
const String profile = 'assets/images/profile.jpg';
const String bg = 'assets/images/background.jpg';
const String manShoes = 'assets/images/manShoes.jpg';
const String success = 'assets/images/success.gif';
const String chatBubble = 'assets/images/emptyChat.png';
const String emptyOrders = 'assets/images/orders.png';
const String callCenter = 'assets/images/center.png';
const String conversation = 'assets/images/conversation.png';

List<Map<String, String>> introData = [
  {
    'image': pieChart,
    'headText': 'Track your routine',
    'descText':
        "Whether it's sets, reps, weight used, you can track it all with our intuitive interface.",
  },
  {
    'image': trophy,
    'headText': 'Set personal goals',
    'descText':
        "We're all in the gym for a reason: goals. set goals for diet and fitness.",
  },
  {
    'image': chat,
    'headText': 'Chat with others',
    'descText': "Inspire and help each other reach fitness and diet goals.",
  },
];

final labels = [
  'Notifications',
  'Payments',
  'Message',
  'My Orders',
  'Setting Account',
  'Call Center',
  'About Application',
];

final icons = [
  Icons.notifications,
  Icons.payment,
  Icons.message,
  Icons.local_dining,
  Icons.settings,
  Icons.person,
  Icons.info,
];

final paymentLabels = [
  'Credit card / Debit card',
  'Cash on delivery',
  'Paypal',
  'Google wallet',
];

final paymentIcons = [
  Icons.credit_card,
  Icons.money_off,
  Icons.payment,
  Icons.account_balance_wallet,
];

final settingLabel = [
  'Account',
  'Address',
  'Telephone',
  'Email',
  'Setting',
  'Order Notifications',
  'Discount Notifications',
  'Credit Card',
  'Logout',
];

List<String> chipsMobile = [
  "IPhone",
  "Samsung",
  "OnePlus",
  "RealMe",
  "Xiomi",
  "Oppo",
  "Vivo",
];

List<String> chipsCategory = [
  "Mobiles",
  "Cloths",
  "Electronics",
  "Furnitures",
  "Shoes",
  "Laptops",
  "Watches",
];

final menuLabels = [
  'Camera',
  "Furniture",
  'Headphone',
  'Gaming',
  'Fashion',
  'Health Care',
  'Computer',
  'Equipment',
  'Sport',
  'Ticket',
  'Books',
  'Cloths',
];

final menuIcons = [
  Icons.camera,
  Icons.home,
  Icons.headset,
  Icons.games,
  Icons.format_shapes,
  Icons.healing,
  Icons.computer,
  Icons.equalizer,
  Icons.gamepad,
  Icons.traffic,
  Icons.book,
  Icons.collections,
];
