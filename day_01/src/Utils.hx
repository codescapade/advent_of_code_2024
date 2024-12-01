import sys.io.File;

function readInput(path: String): Array<Array<Int>> {
  final content = File.getContent(path);
  final lines = content.split('\n');

  final leftList: Array<Int> = [];
  final rightList: Array<Int> = [];

  for (line in lines) {
    final split = line.split('   ');
    leftList.push(Std.parseInt(split[0]));
    rightList.push(Std.parseInt(split[1]));
  }

  return [leftList, rightList];
}

function sortList(a: Int, b: Int): Int {
  return a - b;
}
