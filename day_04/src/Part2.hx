import sys.io.File;

function getCountsP2(inputPath: String): Int {
  var count = 0;
  final grid = getInputGrid(inputPath);

  for (y in 0...grid.length - 2) {
    for (x in 0...grid[0].length - 2) {
      if (hasXmas(grid, x, y)) {
        count++;
      }
    }
  }

  return count;
}

private function getInputGrid(path: String): Array<Array<String>> {
  final input = File.getContent(path);
  final lines = input.split('\n');

  final grid: Array<Array<String>> = [];
  for (line in lines) {
    grid.push(line.split(''));
  }

  return grid;
}

private function hasXmas(grid: Array<Array<String>>, xOffset: Int, yOffset: Int): Bool {
  // top left to bottom right 3 letters
  var tlLine = grid[yOffset][xOffset] + grid[yOffset + 1][xOffset + 1] + grid[yOffset + 2][xOffset + 2];

  // bottom left to top right 3 letters.
  var blLine = grid[yOffset + 2][xOffset] + grid[yOffset + 1][xOffset + 1] + grid[yOffset][xOffset + 2];

  // check for MAS normal and backwards.
  return (tlLine == 'MAS' || tlLine == 'SAM') && (blLine == 'MAS' || blLine == 'SAM');
}
