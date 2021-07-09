import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/enum/dialog_type/dialog_type.dart';
import 'package:stacked_services/stacked_services.dart';

void setupDialogUi() {
  var dialogService = locator<DialogService>();
  dialogService.registerCustomDialogBuilder(
      builder: (BuildContext context, DialogRequest dialogRequest) {
        return _customDialogUi(
          dialogRequest,
          (dialogResponse) => dialogService.completeDialog(dialogResponse),
        );
      },
      variant: null);
}

Widget _customDialogUi(
  DialogRequest dialogRequest,
  Function(DialogResponse) onDialogTap,
) {
  var dialogType = dialogRequest.customData as DialogType;
  switch (dialogType) {
    case DialogType.Form:
      return _FormCustomDialog(
        dialogRequest: dialogRequest,
        onDialogTap: onDialogTap,
      );
    case DialogType.Basic:
      return _BasicCustomDialog(
        dialogRequest: dialogRequest,
        onDialogTap: onDialogTap,
      );
    default:
      return _BasicCustomDialog(
        dialogRequest: dialogRequest,
        onDialogTap: onDialogTap,
      );
  }
}

class _FormCustomDialog extends HookWidget {
  final DialogRequest dialogRequest;
  final Function(DialogResponse) onDialogTap;
  const _FormCustomDialog({
    Key key,
    this.dialogRequest,
    this.onDialogTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = useTextEditingController();
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            dialogRequest.title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: controller,
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            // Complete the dialog when you're done with it to return some data
            onTap: () =>
                onDialogTap(DialogResponse(responseData: [controller.text])),
            child: Container(
              child: dialogRequest.showIconInMainButton
                  ? Icon(Icons.check_circle)
                  : Text(dialogRequest.mainButtonTitle),
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _BasicCustomDialog extends StatelessWidget {
  final DialogRequest dialogRequest;
  final Function(DialogResponse) onDialogTap;
  const _BasicCustomDialog({
    Key key,
    this.dialogRequest,
    this.onDialogTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 300,
      height: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              width: 260,
              height: 50,
              child: FlatButton(
                //padding: EdgeInsets.only(left: 50, right: 50),
                color: Colors.white,
                textColor: Colors.black,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.white,
                splashColor: COLOR_PRIMARY,
                onPressed: () {
                  onDialogTap(DialogResponse(responseData: ["image"]));
                },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.image),
                      SizedBox(width: 10),
                      Text(
                        dialogRequest.mainButtonTitle,
                        style: TextStyle(fontFamily: 'Cormorant', fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            flex: 1,
            child: Container(
              width: 260,
              height: 50,
              //decoration: BoxDecoration(color: Colors.black),
              child: FlatButton(
                //padding: EdgeInsets.only(left: 50, right: 50),
                color: Colors.white,
                textColor: Colors.black,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.white,
                splashColor: COLOR_PRIMARY,
                onPressed: () {
                  onDialogTap(DialogResponse(responseData: ["camera"]));
                },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.camera),
                      SizedBox(width: 10),
                      Text(
                        dialogRequest.secondaryButtonTitle,
                        style: TextStyle(fontFamily: 'Cormorant', fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
