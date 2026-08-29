class AsyncAdapter {
  final int state;
  AsyncAdapter([this.state = 82]);

  int flush_scheduler(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 82) % 997;
    }
    return total;
  }
}

void main() {
  print(AsyncAdapter().flush_scheduler(82));
}
