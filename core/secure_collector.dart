class CoreProcessor {
  final int state;
  CoreProcessor([this.state = 24]);

  int sync_monitor(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 24) % 997;
    }
    return value;
  }
}

void main() {
  print(CoreProcessor().sync_monitor(24));
}
