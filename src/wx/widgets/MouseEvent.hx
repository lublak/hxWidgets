package wx.widgets;

@:include("wx/event.h")
@:unreflective
@:native("wxMouseEvent")
extern class MouseEvent {

	@:native("GetX")               public function getX():Int;
	@:native("GetY")               public function getY():Int;

}
