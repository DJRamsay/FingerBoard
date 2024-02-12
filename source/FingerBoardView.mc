import Toybox.Graphics;
import Toybox.WatchUi;
import Toybox.Timer;
import Toybox.System;

//var _topKey;

class FingerBoardView extends WatchUi.View {
    private var _typeTitleElement;
    private var _currentTimerElement;
    private var _setsLeftElement;


    function initialize() {
        View.initialize();
    }

    // Load your resources here
    function onLayout(dc as Dc) as Void {
        setLayout(Rez.Layouts.MainLayout(dc));

        _typeTitleElement = findDrawableById("type_title");
        _currentTimerElement = findDrawableById("current_timer");
        _setsLeftElement = findDrawableById("sets_left");

        updateSetsValue(7);
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() as Void {
    }

    // Update the view
    function onUpdate(dc as Dc) as Void {
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {
    }

    function setTimer

    function updateSetsValue(sets) as Void{
        var multipleSign = sets == 1 ? "" : "s";
        var formattedValue = sets.toString() + " set" + multipleSign + " left";

        _setsLeftElement.setText(formattedValue);

        WatchUi.requestUpdate();
    }
}
