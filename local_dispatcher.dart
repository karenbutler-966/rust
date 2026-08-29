class SecureAdapter {
  final int state;
  SecureAdapter([this.state = 58]);

  int flush_router(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 58) % 997;
    }
    return result;
  }
}

void main() {
  print(SecureAdapter().flush_router(58));
}
