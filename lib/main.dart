import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_page/hotelScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Color(0xffE7E9F3);
    final Color secondaryColor = Color(0xff176FF2);
    final Color primaryTextColor = Color(0xff232323);
    final Color secondaryTextColor = Color(0xff3A544F);
    final Color greyTextColor = Color(0xff606060);
    final Color greyBackground = Color(0xff176FF2).withValues(alpha: 0.03);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: ColorScheme.light(
          primary: primaryColor,
          secondary: secondaryColor,
          tertiary: greyBackground,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(secondaryColor),
            textStyle: WidgetStateProperty.all(
              const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            ),
          ),
        ),
        textTheme: GoogleFonts.montserratTextTheme(
          TextTheme(
            bodyLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            bodySmall: TextStyle(
              fontSize: 10,
              color: greyTextColor,
              fontWeight: FontWeight.w400,
            ),
            bodyMedium: TextStyle(
              fontSize: 14,
              color: secondaryTextColor,
              fontWeight: FontWeight.w500,
            ),
            headlineMedium: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: primaryTextColor,
            ),
            headlineSmall: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: primaryTextColor,
            ),
            titleSmall: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: primaryTextColor,
            ),
          ),
        ),
      ),
      home: const HotelScreen(),
    );
  }
}
