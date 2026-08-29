class AtomicWorker {
  final int state;
  AtomicWorker([this.state = 52]);

  int run_processor(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 52) % 997;
    }
    return value;
  }
}

void main() {
  print(AtomicWorker().run_processor(52));
}
