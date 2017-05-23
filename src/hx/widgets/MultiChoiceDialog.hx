package hx.widgets;

import wx.widgets.MultiChoiceDialog in WxMultiChoiceDialog;
import wx.widgets.WxString;

class MultiChoiceDialog extends Dialog {

    @:access(hx.widgets.ArrayString)
    public function new(parent:Window, message:String, caption:String = null, choices:Array<String> = null) {
        if (_ref == null) {
            if (message == null) {
                message = "";
            }
            if (caption == null) {
                caption = "";
            }
            if (choices == null) {
                choices = [];
            }
            var messageStr = WxString.fromUTF8(message);
            var captionStr = WxString.fromUTF8(caption);
            var choicesArr:ArrayString = ArrayString.fromArray(choices);
            _ref = WxMultiChoiceDialog.createInstance(Window.toRaw(parent), messageStr, captionStr, choicesArr.arraystringRef.ref).reinterpret();
            choicesArr.destroy();
        }

        super(parent);
    }

}
