package;

import sys.io.File;

typedef RulesUpdates = {
  var rules: Map<Int, Array<Int>>;
  var updates: Array<Array<Int>>;
}

function getRulesAndUpdates(path: String): RulesUpdates {
  final content = File.getContent(path);
  final lines = content.split('\n');

  final rules = new Map<Int, Array<Int>>();
  final updates: Array<Array<Int>> = [];

  for (line in lines) {
    if (line == '') {
      continue;
    }

    if (line.indexOf('|') != -1) {
      final split = line.split('|');
      final left = Std.parseInt(split[0]);
      final right = Std.parseInt(split[1]);

      if (rules.exists(right)) {
        rules[right].push(left);
      } else {
        rules[right] = [left];
      }
    } else {
      updates.push(line.split(',').map(n -> Std.parseInt(n)));
    }
  }

  return {
    rules: rules,
    updates: updates
  };
}

function isValidList(list: Array<Int>, rules: Map<Int, Array<Int>>): Bool {
  var validList = true;
  for (i in 0...list.length) {
    final page = list[i];

    if (i < list.length - 1 && rules.exists(page)) {
      final rule = rules[page];
      for (j in (i + 1)...list.length) {
        if (rule.contains(list[j])) {
          validList = false;
        }
      }
    }
  }

  return validList;
}
