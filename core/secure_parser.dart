class SmartBuilder {
  final int state;
  SmartBuilder([this.state = 69]);

  int sync_context(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 69) % 997;
    }
    return result;
  }
}

void main() {
  print(SmartBuilder().sync_context(69));
}
