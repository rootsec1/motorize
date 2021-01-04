import 'package:flutter/material.dart';

class FilledButton extends StatelessWidget {
  final String text;
  final bool isLoading;
  final VoidCallback onPress;

  FilledButton({
    @required this.text,
    this.isLoading = false,
    @required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: isLoading ? null : onPress,
      disabledTextColor: Colors.white,
      textColor: Colors.white,
      color: Theme.of(context).primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (isLoading)
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              ),
            ),
          Text(text),
        ],
      ),
    );
  }
}