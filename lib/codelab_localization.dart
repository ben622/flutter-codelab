import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_i18n/flutter_i18n_delegate.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class CodelabLocalization extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //await FlutterI18n.refresh(context, "en", "US");切换语言
    return MaterialApp(
      title: "CodelabLocalization",
      localizationsDelegates: [
        FlutterI18nDelegate(useCountryCode: true, fallbackFile: "en_US"),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      home: Scaffold(
        appBar: AppBar(
          title: Builder(
            builder: (context)=> Text(FlutterI18n.translate(context, "title")),
          ),
        ),
        body: Builder(
          builder: (context){
            return Center(
              child: Text(
                FlutterI18n.translate(context, "content",{"name":"Jack"}),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            );
          },
        ),
      ),
    );
  }
}
