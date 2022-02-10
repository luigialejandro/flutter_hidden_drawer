import 'package:flutter/material.dart';

class InfoCustomDialogsButton extends StatefulWidget {
  final String title;
  final String descriptions;
  final String text;
  final Image? img;

  const InfoCustomDialogsButton({
    Key? key,
    required this.title,
    required this.descriptions,
    required this.text,
    this.img,
  }) : super(key: key);

  @override
  _InfoCustomDialogsButtonState createState() =>
      _InfoCustomDialogsButtonState();
}

class _InfoCustomDialogsButtonState extends State<InfoCustomDialogsButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(ConstantsInfoButton.padding),
                  ),
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  child: contentBox(context),
                );
              });
        },
        icon: Image.asset('assets/images/information_icon_b.png'),
        iconSize: 50,
      ),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(
              left: ConstantsInfoButton.padding,
              top: ConstantsInfoButton.avatarRadius +
                  ConstantsInfoButton.padding,
              right: ConstantsInfoButton.padding,
              bottom: ConstantsInfoButton.padding),
          margin: const EdgeInsets.only(top: ConstantsInfoButton.avatarRadius),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: const Color(0xFF691C32),
              borderRadius: BorderRadius.circular(ConstantsInfoButton.padding),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                widget.title,
                style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                widget.descriptions,
                style: const TextStyle(fontSize: 14, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 22,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      widget.text,
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
        Positioned(
          left: ConstantsInfoButton.padding,
          right: ConstantsInfoButton.padding,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: ConstantsInfoButton.avatarRadius,
            child: ClipRRect(
                borderRadius: const BorderRadius.all(
                    Radius.circular(ConstantsInfoButton.avatarRadius)),
                child: Image.asset("assets/images/information_icon_b.png")),
          ),
        ),
      ],
    );
  }
}

class ConstantsInfoButton {
  ConstantsInfoButton._();
  static const double padding = 20;
  static const double avatarRadius = 45;
}
