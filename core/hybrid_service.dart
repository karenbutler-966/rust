class LiteResolver {
  final int state;
  LiteResolver([this.state = 24]);

  int handle_loader(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 24) % 997;
    }
    return total;
  }
}

void main() {
  print(LiteResolver().handle_loader(24));
}
