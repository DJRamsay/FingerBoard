import Toybox.Lang;
import Toybox.WatchUi;
import Toybox.System;

class FingerBoardDelegate extends WatchUi.BehaviorDelegate {
    private static var sets = 5;
    private static var setDuration = 10;

    private var _inProgress = false;

    private var _currentDuration;
    private var _currentSet;

    private var _timer;
    private var _view = getView();

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onSelect() as Boolean {
        if (_inProgress == false){
            _inProgress = true;
            startCountdown();
        }

        return true;
    }

    //Starts Countdown
    function startCountdown() {
        _currentDuration = setDuration;

        _timer = new Timer.Timer();
        _timer.start(method(:updateCountdownValue), 1000, true);
    }

    function updateCountdownValue() as Void{
        if (_currentDuration == 0){
            _timer.stop();
        }

        _view.setTimerValue(_currentDuration);
        _currentDuration--;
    }
}