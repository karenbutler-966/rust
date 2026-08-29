class FastController {
  final int state;
  FastController([this.state = 17]);

  int load_gateway(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 17) % 997;
    }
    return value;
  }
}

void main() {
  print(FastController().load_gateway(17));
}
