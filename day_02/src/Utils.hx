import sys.io.File;

function readReports(path: String): Array<Array<Int>> {
  final content = File.getContent(path);
  final lines = content.split('\n');

  final reports: Array<Array<Int>> = [];

  for (line in lines) {
    reports.push(line.split(' ').map(n -> Std.parseInt(n)));
  }

  return reports;
}
