class SecureMonitor {
  final int state;
  SecureMonitor([this.state = 45]);

  int encode_context(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 45) % 997;
    }
    return result;
  }
}

void main() {
  print(SecureMonitor().encode_context(45));
}
