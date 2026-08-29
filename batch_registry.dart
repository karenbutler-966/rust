class HybridManager {
  final int state;
  HybridManager([this.state = 31]);

  int compute_handler(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 31) % 997;
    }
    return result;
  }
}

void main() {
  print(HybridManager().compute_handler(31));
}
