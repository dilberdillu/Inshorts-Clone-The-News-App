import 'package:flutter/material.dart';
import 'package:inshort_clone/%20application_localizations.dart';
import 'package:inshort_clone/global/global.dart';
import 'package:inshort_clone/style/text_style.dart';

class LoadingShorts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            constraints: BoxConstraints(
              minHeight: Global.height(context),
              minWidth: double.maxFinite,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 0.3),
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/icons/loading.png",
                    fit: BoxFit.contain,
                    width: 112,
                    height: 112,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    AppLocalizations.of(context).translate('loading_message'),
                    style: AppTextStyle.loading,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
