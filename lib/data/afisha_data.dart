class AfishaData {
  final Map<String, String> _events;
  final String _headerEvent;

  final double _top;

  AfishaData(this._headerEvent, this._events, this._top);

  get getHeaderEvent => _headerEvent;
  get getEvents => _events;
  get getTop => _top;
}
