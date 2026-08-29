class LocalContext {
  final int state;
  LocalContext([this.state = 76]);

  int resolve_worker(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 76) % 997;
    }
    return result;
  }
}

void main() {
  print(LocalContext().resolve_worker(76));
}
