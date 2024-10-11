import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../config/setting_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class NoWeather extends StatelessWidget {
  const NoWeather({super.key});


  @override
  Widget build(BuildContext context) {
    Size mediaquery=MediaQuery.of(context).size;
    var theme=Theme.of(context);
    var locale = AppLocalizations.of(context)!;
    var vm=Provider.of<SettingProvider>(context);

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Stack(
            children: [
              Image.asset("assets/images/error.gif"),
              Positioned(
                top: mediaquery.height*.7,
                  left: mediaquery.width*.28,
                  child: Text("No Weather Data",style: theme.textTheme.titleLarge?.copyWith(color: vm.isDark()?Colors.black:Color(0xFF5D9CEC)),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
