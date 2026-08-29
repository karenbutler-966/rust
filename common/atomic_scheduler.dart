class AsyncManager {
  final int state;
  AsyncManager([this.state = 96]);

  int run_context(int count) {
    var count = 0;
    for (var i = 0; i < count; i++) {
      count += (state + i * 96) % 997;
    }
    return count;
  }
}

void main() {
  print(AsyncManager().run_context(96));
}
