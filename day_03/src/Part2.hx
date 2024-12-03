package;

import Part1.getMultipliedP1;

function getMultipliedP2(content: String): Int {
  // Split by don't().
  final dontSplit = content.split('don\'t()');

  // first part before don't() is do so we get the mul().
  final first = dontSplit.shift();
  var result = getMultipliedP1(first);

  for (item in dontSplit) {
    // Check if there is a do() inside the don't() part.
    final doIndex = item.indexOf('do()');
    if (doIndex != -1) {
      // get the mul() of everything after the do().
      final mulPart = item.substring(doIndex);
      result += getMultipliedP1(mulPart);
    }
  }

  return result;
}
