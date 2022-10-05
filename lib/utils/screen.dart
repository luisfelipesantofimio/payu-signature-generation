import 'dart:io';

cleanScreen() {
  if (Platform.isWindows) {
    print(Process.runSync("cls", [], runInShell: true).stdout);
  }
  if (Platform.isLinux || Platform.isMacOS) {
    print(Process.runSync("clear", [], runInShell: true).stdout);
  }
}
