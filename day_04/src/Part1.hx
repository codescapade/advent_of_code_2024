package;

import sys.io.File;

private enum abstract Orientation(String) {
  var HORIZONTAL = 'horizontal';
  var VERTICAL = 'vertical';
  var DIAGONAL_TL = 'diagonal_tl';
  var DIAGONAL_TR = 'diagonal_tr';
}

private final xmas = ~/XMAS/g;
private final samx = ~/SAMX/g;

function getCountsP1(inputPath: String): Int {
  final lines = getInputLines(inputPath);

  var count = getxmasCount(lines[Orientation.HORIZONTAL]);
  count += getxmasCount(lines[Orientation.VERTICAL]);
  count += getxmasCount(lines[Orientation.DIAGONAL_TL]);
  count += getxmasCount(lines[Orientation.DIAGONAL_TR]);

  return count;
}

private function getxmasCount(lines: Array<String>): Int {
  var count = 0;
  for (line in lines) {
    var text = line;
    while (xmas.match(text)) {
      count++;
      text = xmas.matchedRight();
    }

    text = line;
    while (samx.match(text)) {
      count++;
      text = samx.matchedRight();
    }
  }

  return count;
}

private function getInputLines(path: String): Map<Orientation, Array<String>> {
  final lines: Map<Orientation, Array<String>> = new Map();

  final input = File.getContent(path);
  final horizontals = input.split('\n');

  lines[HORIZONTAL] = horizontals;
  lines[VERTICAL] = getVerticalLines(horizontals);
  lines[DIAGONAL_TL] = getDiagonalsTL(horizontals);
  lines[DIAGONAL_TR] = getDiagonalsTR(horizontals);

  return lines;
}

private function getVerticalLines(lines: Array<String>): Array<String> {
  final verticals: Array<String> = [];

  for (x in 0...lines[0].length) {
    var line: String = '';
    for (y in 0...lines.length) {
      line += lines[y].charAt(x);
    }
    verticals.push(line);
  }

  return verticals;
}

private function getDiagonalsTL(lines: Array<String>): Array<String> {
  final diagonals: Array<String> = [];
  final rows = lines.length;
  final cols = lines[0].length;
  for (n in 0...(cols + rows - 1)) {
    var row = n;
    var col = 0;
    var str = '';
    while (row >= 0 && col < cols) {
      if (row < rows) {
        str += lines[row].charAt(col);
      }
      row -= 1;
      col += 1;
    }
    diagonals.push(str);
  }

  return return diagonals;
}

private function getDiagonalsTR(lines: Array<String>): Array<String> {
  final diagonals: Array<String> = [];
  final rows = lines.length;
  final cols = lines[0].length;
  for (n in 0...(cols + rows - 1)) {
    var row = n;
    var col = cols - 1;
    var str = '';
    while (row >= 0 && col < cols) {
      if (row < rows) {
        str += lines[row].charAt(col);
      }
      row -= 1;
      col -= 1;
    }
    diagonals.push(str);
  }

  return return diagonals;
}
